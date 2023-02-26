package ru.vinorate.app.service

import com.codeborne.selenide.Selenide.actions
import com.codeborne.selenide.Selenide.open
import org.openqa.selenium.Keys
import org.springframework.stereotype.Service
import ru.vinorate.app.pages.GlobusPage
import ru.vinorate.app.utils.browser.BrowserConfiguration

@Service
class GlobusService(val globusPage: GlobusPage) : ShopService {
    val pagesCount by lazy {
        globusPage.pagesCount
    }

    val nextPageButton by lazy {
        globusPage.nextPageButton
    }

    fun scroll() {
        for (i in 0..8) {
            actions().keyDown(Keys.PAGE_DOWN).build().perform()
            Thread.sleep(500)
        }
    }

    override fun prepare() {
        BrowserConfiguration().setUp("94.0")
        open("https://online.globus.ru/catalog/alkogol/vino/krasnoe-vino/filter/atr_ru_sugar_contetnt-is-190795-or-190794/apply/")
        globusPage.cookiesAccept.click()
        globusPage.confirmAgeButton.click()
        globusPage.itemsCountSelector.click()
        globusPage.items64CountOnPage.click()
    }

    override fun getWineNames(): List<String> {
        return globusPage.getWineNames()
    }

    override fun getWinePrices(): List<String> {
        return globusPage.getWinePrices()
    }

    override fun getWinePictures(): List<String> {
        return globusPage.getWinePictures()
    }
}