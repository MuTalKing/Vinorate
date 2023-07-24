package ru.vinorate.app.service.impl

import com.codeborne.selenide.Selectors
import com.codeborne.selenide.Selenide.`$`
import com.codeborne.selenide.Selenide.actions
import com.codeborne.selenide.Selenide.open
import com.codeborne.selenide.Selenide.switchTo
import org.openqa.selenium.Keys
import org.springframework.stereotype.Service
import ru.vinorate.app.pages.GlobusPage
import ru.vinorate.app.service.ShopService
import ru.vinorate.app.utils.browser.BrowserConfiguration

@Service
class GlobusServiceImpl(
    private val globusPage: GlobusPage,
    private val browserConfiguration: BrowserConfiguration
) : ShopService {
    val pagesCount by lazy {
        globusPage.pagesCount
    }

    val nextPageButton by lazy {
        globusPage.nextPageButton
    }

    fun scroll() {
        for (i in 0..8) {
            actions().sendKeys(Keys.PAGE_DOWN).build().perform()
            Thread.sleep(500)
        }
    }

    override fun prepare(page: String) {
        browserConfiguration.setUp()
        open(page)
        globusPage.cookiesAccept.click()
        globusPage.confirmAgeButton.click()
        globusPage.itemsCountSelector.click()
        globusPage.items64CountOnPage.click()
        switchTo().frame(`$`(Selectors.byXpath("//iframe[@title='Flocktory widget']")))
        globusPage.closeButton.click()
        switchTo().defaultContent()
    }

    override fun getWineNames(color: String): List<String> {
        return globusPage.getWineNames(color)
    }

    override fun getWinePrices(): List<String> {
        return globusPage.getWinePrices()
    }

    override fun getWinePictures(): List<String> {
        return globusPage.getWinePictures()
    }

    override fun getWineSugar(): List<String> {
        return globusPage.getWineSugar()
    }
}