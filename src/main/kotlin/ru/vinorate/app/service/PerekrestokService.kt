package ru.vinorate.app.service

import com.codeborne.selenide.Configuration
import com.codeborne.selenide.Selenide.open
import com.codeborne.selenide.Selenide.sessionId
import org.springframework.stereotype.Service
import ru.vinorate.app.pages.PerekrestokPage

@Service
class PerekrestokService(val perekrestokPage: PerekrestokPage): ShopService {

    override fun getWineNames(): List<String> {
        Configuration.remote = "http://selenoid:4444/wd/hub"
        Configuration.browserVersion = "94.0"
        Configuration.headless = false
        Configuration.browserSize = "1920x1080"
        Configuration.browserCapabilities.setCapability("enableVNC", true)
        Configuration.browserCapabilities.setCapability("screenResolution", "1920x1080x24")
        open("https://www.perekrestok.ru/cat/c/2/vino")
        perekrestokPage.confirmAgeButton.click()
        println(sessionId())
        perekrestokPage.filterByDryWineButton.click()
        perekrestokPage.filterBySemiDryWineButton.click()
        perekrestokPage.filterByRedWineButton.click()
        return perekrestokPage.getWine()
    }

}