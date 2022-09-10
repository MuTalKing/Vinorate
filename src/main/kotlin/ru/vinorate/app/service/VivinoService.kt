package ru.vinorate.app.service

import com.codeborne.selenide.Selectors
import com.codeborne.selenide.Selenide.*
import org.modelmapper.ModelMapper
import org.openqa.selenium.By.ByXPath
import org.springframework.stereotype.Service
import ru.vinorate.app.dto.Wine
import ru.vinorate.app.model.Shop
import ru.vinorate.app.pages.VivinoPage
import ru.vinorate.app.utils.browser.BrowserConfiguration

@Service
class VivinoService(
    val vivinoPage: VivinoPage
) {

    fun <T> getVivinoRate(wineNamesList: List<String>, shop: Shop<T>, dbService: DbService) {
        BrowserConfiguration().setUp()
        open("https://www.vivino.com")

        val lastIndexWineNames = getLastIndexOfWineNamesListByName(
            wineNamesList = wineNamesList,
            wineName = dbService.lastName()
        )
        for (wine in lastIndexWineNames + 1 until wineNamesList.size) {
            vivinoPage.apply {
                searchField.clear()
                searchField.sendKeys(wineNamesList[wine - 1])
                searchField.pressEnter()
                val wineIsVisible = waitForVisiblePartOfWineName(wineNamesList[wine - 1])
                if (wineIsVisible) {
                    if (rateIsVisible()) {
                        insertIntoDB(
                            wineName = wineNamesList[wine - 1],
                            rate = `$`(Selectors.byXpath("//div[@class = 'search-results-list']/div[1]//div[@class= 'text-inline-block light average__number']")).text,
                            shop = shop,
                            dbService = dbService
                        )
                    } else {
                        insertIntoDB(
                            wineName = wineNamesList[wine - 1],
                            rate = "-",
                            shop = shop,
                            dbService = dbService
                        )
                    }
                }
            }
        }
    }

    private fun getLastIndexOfWineNamesListByName(wineNamesList: List<String>, wineName: String?) =
        if (wineName == null) 0
        else wineNamesList.indexOf(wineName) + 1

    private fun waitForVisiblePartOfWineName(wineName: String): Boolean{
        for (i in 0..20) {
            if (`$$`(
                    ByXPath(
                        "//span[@class='bold' and contains(text(), '${
                            ifNameHasMoreThanOneWordTakeSecond(wineName).replace(
                                "'",
                                ""
                            )
                        }')] | //mark[contains(text(), '${
                            ifNameHasMoreThanOneWordTakeSecond(wineName).replace("'", "")
                        }')]"
                    )
                ).size > 0
            ) return true
            sleep(250)
        }
        return false
    }

    private fun ifNameHasMoreThanOneWordTakeSecond(wineName: String) =
        if(wineName.split(" ")[1] != "") wineName.split(" ")[1]
        else wineName.split(" ")[0]

    private fun rateIsVisible() = `$$`(Selectors.byXpath("//div[@class = 'search-results-list']/div[1]//div[@class= 'text-inline-block light average__number']")).size > 0

    private fun <T> insertIntoDB(wineName: String, rate: String, shop: Shop<T>,  dbService: DbService) =
        dbService.saveWine(
            ModelMapper().map(
                Wine(
                    id = dbService.lastId() + 1,
                    name = wineName,
                    rate = rate
                ), shop::class.java
            )
        )
}