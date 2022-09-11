package ru.vinorate.app.utils.browser

import com.codeborne.selenide.Configuration

class BrowserConfiguration {
    fun setUp(browserVersion: String) {
        Configuration.remote = "http://selenoid:4444/wd/hub"
        Configuration.browserVersion = browserVersion
        Configuration.browserSize = "1920x1080"
        Configuration.browserCapabilities.setCapability("enableVNC", true)
        Configuration.browserCapabilities.setCapability("screenResolution", "1920x1080x24")
    }
}