package ru.vinorate.app.utils.browser

import com.codeborne.selenide.Configuration

class BrowserConfiguration {
    fun setUp() {
        Configuration.remote = "http://selenoid:4444/wd/hub"
        Configuration.browserVersion = "104.0"
        Configuration.browserCapabilities.setCapability("enableVNC", true)
        Configuration.browserCapabilities.setCapability("enableVideo", true)
        Configuration.browserCapabilities.setCapability("screenResolution", "1920x1080x24")
    }
}