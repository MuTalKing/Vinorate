package ru.vinorate.app.service

import com.codeborne.selenide.Selectors.byXpath
import com.codeborne.selenide.Selenide.`$`
import com.codeborne.selenide.Selenide.open
import org.openqa.selenium.By
import org.springframework.stereotype.Service
import ru.vinorate.app.pages.PerekrestokPage

@Service
class PerekrestokService: ShopService {
    private val perekrestokPage = PerekrestokPage()

    override fun getWineNames(): List<String> {
        open("https://www.perekrestok.ru/cat/c/2/vino")
        perekrestokPage.confirmAgeButton.click()
        perekrestokPage.acceptCookieButton.click()
        perekrestokPage.filterByDryWineButton.click()
        perekrestokPage.filterBySemiDryWineButton.click()
        perekrestokPage.filterByRedWineButton.click()
        return perekrestokPage.getWine()
    }

}