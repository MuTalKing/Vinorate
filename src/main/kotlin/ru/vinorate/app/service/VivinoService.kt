package ru.vinorate.app.service

import com.codeborne.selenide.Selectors
import com.codeborne.selenide.Selenide.`$`
import com.codeborne.selenide.Selenide.`$$`
import com.codeborne.selenide.Selenide.open
import com.codeborne.selenide.Selenide.refresh
import com.codeborne.selenide.Selenide.sleep
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
    private val vivinoPage: VivinoPage,
    private val vivinoDbService: VivinoDbService,
    private val browserConfiguration: BrowserConfiguration
) {

    fun getVivinoRateAndInsertIntoDb(
        wineNamesList: List<String>,
        dbService: DbService,
    ) {
        browserConfiguration.setUp()
        open("https://www.vivino.com")

        val lastIndexWineNames = getLastIndexOfWineNamesListByName(
            wineNamesList = wineNamesList,
            wineName = dbService.firstNameByRate("")
        )
        for (wine in lastIndexWineNames .. wineNamesList.size) {
            val rateFromDb = vivinoDbService.findRateByName(wineNamesList[wine - 1])
            if (rateFromDb != null) {
                dbService.updateRate(rateFromDb, wineNamesList[wine - 1])
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
                            dbService.updateRate(
                                `$`(Selectors.byXpath("//div[@class = 'search-results-list']/div[1]//div[@class= 'text-inline-block light average__number']")).text,
                                wineNamesList[wine - 1]
                            )
                        } else {
                            insertIntoVivinoDB(
                                wineName = wineNamesList[wine - 1],
                                rate = "-",
                                vivinoDbService = vivinoDbService
                            )
                            dbService.updateRate(
                                "-",
                                wineNamesList[wine - 1]
                            )
                        }
                    } else {
                        insertIntoVivinoDB(
                            wineName = wineNamesList[wine - 1],
                            rate = "-",
                            vivinoDbService = vivinoDbService
                        )
                        dbService.updateRate(
                            "-",
                            wineNamesList[wine - 1]
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

    fun insertIntoDB(
        wineName: String,
        rate: String,
        winePrice: String,
        winePicture: String,
        shop: Shop,
        dbService: DbService,
        shopLogo: String,
        color: String,
        sugar: String
    ) {
        if (dbService.findByName(wineName) == null) {
            dbService.saveWine(
                ModelMapper().map(
                    Wine(
                        id = dbService.lastId() + 1,
                        name = wineName,
                        rate = rate,
                        price = winePrice,
                        picture = winePicture,
                        shopLogo = shopLogo,
                        color = color,
                        sugar = sugar
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
        if(vivinoDbService.findRateByName(wineName) == null) {
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
}