package ru.vinorate.app.service

import com.codeborne.selenide.Selenide.open
import org.springframework.stereotype.Service
import ru.vinorate.app.pages.PerekrestokPage
import ru.vinorate.app.utils.browser.BrowserConfiguration

@Service
class PerekrestokService(
    private val perekrestokPage: PerekrestokPage,
    private val browserConfiguration: BrowserConfiguration
) : ShopService {

    override fun prepare(page: String) {
        browserConfiguration.setUp()
        open(page)
        perekrestokPage.confirmAgeButton.click()
    }

    override fun preparePageWithRedWines() {
        browserConfiguration.setUp()
        open("https://www.perekrestok.ru/cat/c/2/vino?filter.tsvet-vina=krasnoe")
        perekrestokPage.confirmAgeButton.click()
    }

    override fun getWineNames(color: String): List<String> {
        return perekrestokPage.getWineNames(color)
    }

    override fun getWinePrices(): List<String> {
        return perekrestokPage.getWinePrices()
    }

    override fun getWinePictures(): List<String> {
        return perekrestokPage.getWinePictures()
    }

    override fun getWineSugar(): List<String> {
        return perekrestokPage.getWineSugar()
    }

}