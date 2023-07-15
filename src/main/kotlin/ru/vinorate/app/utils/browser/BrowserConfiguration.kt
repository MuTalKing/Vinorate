package ru.vinorate.app.utils.browser

import com.codeborne.selenide.Configuration
import ru.vinorate.app.config.VinorateProperties

class BrowserConfiguration(
    private val vinorateProperties: VinorateProperties
) {
    fun setUp() {
        Configuration.remote = vinorateProperties.selenide.url
        Configuration.browserVersion = "94.0"
        Configuration.browserSize = "1920x1080"
        Configuration.pageLoadTimeout = 60000
        Configuration.browserCapabilities.setCapability("enableVNC", true)
        Configuration.browserCapabilities.setCapability("screenResolution", "1920x1080x24")
    }
}