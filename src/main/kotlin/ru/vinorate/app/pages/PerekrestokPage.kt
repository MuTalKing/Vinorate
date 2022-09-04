package ru.vinorate.app.pages

import com.codeborne.selenide.Selectors
import com.codeborne.selenide.Selenide
import com.codeborne.selenide.Selenide.`$$`
import org.openqa.selenium.By
import org.openqa.selenium.support.ui.ExpectedConditions

class PerekrestokPage {
    val confirmAgeButton =
        Selenide.`$`(Selectors.byXpath("//span[@class='button-children' and text()='Мне исполнилось 18 лет']"))

    val acceptCookieButton =
        Selenide.`$`(Selectors.byXpath("//span[@class='button-children' and text()='Принять']"))

    val filterByDryWineButton =
        Selenide.`$`(Selectors.byXpath("//div[@class='catalog-feature-enum__title' and text()='Сухое']"))

    val filterBySemiDryWineButton =
        Selenide.`$`(Selectors.byXpath("//div[@class='catalog-feature-enum__title' and text()='Полусухое']"))

    val filterByRedWineButton =
        Selenide.`$`(Selectors.byXpath("//div[@class='catalog-feature-enum__title' and text()='Красное']"))

    fun getWine(): List<String> {
        val listOfWines = mutableListOf<String>()
        `$$`(By.xpath("//span[@class = 'product-card__link-text']")).forEach{
                webElement ->
            listOfWines.add(webElement.text)
        }
        print(listOfWines)
        return listOfWines
    }
}