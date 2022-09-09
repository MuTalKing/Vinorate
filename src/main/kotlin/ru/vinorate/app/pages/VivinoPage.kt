package ru.vinorate.app.pages

import com.codeborne.selenide.Selectors
import com.codeborne.selenide.Selenide
import org.springframework.stereotype.Component

@Component
class VivinoPage {

    val searchField =
        Selenide.`$`(Selectors.byXpath("//input[@placeholder = 'Search any wine']"))
}