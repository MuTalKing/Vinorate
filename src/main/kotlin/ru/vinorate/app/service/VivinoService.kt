package ru.vinorate.app.service

import com.codeborne.selenide.Selectors
import com.codeborne.selenide.Selenide.*
import org.modelmapper.ModelMapper
import org.openqa.selenium.By.ByXPath
import org.springframework.stereotype.Service
import ru.vinorate.app.dto.VivinoDbDto
import ru.vinorate.app.dto.Wine
import ru.vinorate.app.model.Shop
import ru.vinorate.app.model.Vivino
import ru.vinorate.app.pages.VivinoPage
import ru.vinorate.app.utils.browser.BrowserConfiguration

@Service
class VivinoService(
    val vivinoPage: VivinoPage,
    private val vivinoDbService: VivinoDbService
) {

    fun <T> getVivinoRateAndInsertIntoDb(
        wineNamesList: List<String>,
        winePricesList: List<String>,
        winePicturesList: List<String>,
        shop: Shop<T>,
        dbService: DbService
    ) {
        BrowserConfiguration().setUp("94.0")
        open("https://www.vivino.com")

        val lastIndexWineNames = getLastIndexOfWineNamesListByName(
            wineNamesList = wineNamesList,
            wineName = dbService.firstNameByRate("")
        )
        for (wine in lastIndexWineNames until wineNamesList.size) {
            val rateFromDb = vivinoDbService.findRateByName(wineNamesList[wine - 1])
            if (rateFromDb != null) {
                insertIntoDB(
                    wineName = wineNamesList[wine - 1],
                    rate = rateFromDb,
                    winePrice = winePricesList[wine - 1],
                    winePicture = winePicturesList[wine - 1],
                    shop = shop,
                    dbService = dbService
                )
            } else {
                vivinoPage.apply {
                    searchField.clear()
                    searchField.sendKeys(wineNamesList[wine - 1])
                    searchField.pressEnter()
                    sleep(1000)
                    val wineIsVisible = waitForVisiblePartOfWineName(wineNamesList[wine - 1])
                    if (wineIsVisible) {
                        if (rateIsVisible()) {
                            insertIntoVivinoDB(
                                wineName = wineNamesList[wine - 1],
                                rate = `$`(Selectors.byXpath("//div[@class = 'search-results-list']/div[1]//div[@class= 'text-inline-block light average__number']")).text,
                                vivinoDbService = vivinoDbService
                            )
                            insertIntoDB(
                                wineName = wineNamesList[wine - 1],
                                rate = `$`(Selectors.byXpath("//div[@class = 'search-results-list']/div[1]//div[@class= 'text-inline-block light average__number']")).text,
                                winePrice = winePricesList[wine - 1],
                                winePicture = winePicturesList[wine - 1],
                                shop = shop,
                                dbService = dbService
                            )
                        } else {
                            insertIntoVivinoDB(
                                wineName = wineNamesList[wine - 1],
                                rate = "-",
                                vivinoDbService = vivinoDbService
                            )
                            insertIntoDB(
                                wineName = wineNamesList[wine - 1],
                                rate = "-",
                                winePrice = winePricesList[wine - 1],
                                winePicture = winePicturesList[wine - 1],
                                shop = shop,
                                dbService = dbService
                            )
                        }
                    } else {
                        insertIntoVivinoDB(
                            wineName = wineNamesList[wine - 1],
                            rate = "-",
                            vivinoDbService = vivinoDbService
                        )
                        insertIntoDB(
                            wineName = wineNamesList[wine - 1],
                            rate = "-",
                            winePrice = winePricesList[wine - 1],
                            winePicture = winePicturesList[wine - 1],
                            shop = shop,
                            dbService = dbService
                        )
                    }
                }
            }
        }
    }

    private fun getLastIndexOfWineNamesListByName(wineNamesList: List<String>, wineName: String?) =
        if (wineName == null) 1
        else wineNamesList.indexOf(wineName) + 1

    private fun waitForVisiblePartOfWineName(wineName: String): Boolean {
        for (i in 0..20) {
            wineName.trim().split(" ").forEach {
                if (`$$`(
                        ByXPath(
                            "//span[@class='bold' and contains(text(), '${
                                it.replace(
                                    "'",
                                    ""
                                )
                            }')] | //mark[contains(text(), '${
                                it.replace("'", "")
                            }')]"
                        )
                    ).size > 0
                ) return true
            }
            if (i == 10) refresh()
            sleep(250)
        }
        return false
    }

    private fun ifNameHasMoreThanOneWordTakeSecond(wineName: String) =
        if (wineName.split(" ")[1] != "") wineName.split(" ")[1]
        else wineName.split(" ")[0]

    private fun rateIsVisible() =
        `$$`(Selectors.byXpath("//div[@class = 'search-results-list']/div[1]//div[@class= 'text-inline-block light average__number']")).size > 0

    fun <T> insertIntoDB(
        wineName: String,
        rate: String,
        winePrice: String,
        winePicture: String,
        shop: Shop<T>,
        dbService: DbService
    ) {
        if (dbService.findByName(wineName) == null) {
            dbService.saveWine(
                ModelMapper().map(
                    Wine(
                        id = dbService.lastId() + 1,
                        name = wineName,
                        rate = rate,
                        price = winePrice,
                        picture = winePicture
                    ), shop::class.java
                )
            )
        }
        else {
            dbService.updateRate(rate, wineName)
        }
    }

    fun insertIntoVivinoDB(
        wineName: String,
        rate: String,
        vivinoDbService: VivinoDbService
    ) {
        vivinoDbService.saveWine(
            ModelMapper().map(
                VivinoDbDto(
                    id = vivinoDbService.lastId() + 1,
                    name = wineName,
                    rate = rate
                ), Vivino::class.java
            )
        )

    }
}