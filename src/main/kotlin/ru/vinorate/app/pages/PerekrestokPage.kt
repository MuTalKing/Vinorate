package ru.vinorate.app.pages

import com.codeborne.selenide.CollectionCondition
import com.codeborne.selenide.Selectors
import com.codeborne.selenide.Selenide.`$`
import com.codeborne.selenide.Selenide.`$$`
import org.openqa.selenium.By
import org.springframework.stereotype.Component
import java.time.Duration

@Component
class PerekrestokPage {
    val confirmAgeButton =
        `$`(Selectors.byXpath("//span[@class='button-children' and text()='Мне исполнилось 18 лет']"))

    val acceptCookieButton =
        `$`(Selectors.byXpath("//span[@class='button-children' and text()='Принять']"))

    val filterByDryWineButton =
        `$`(Selectors.byXpath("//div[@class='catalog-feature-enum__title' and text()='Сухое']"))

    val filterBySemiDryWineButton =
        `$`(Selectors.byXpath("//div[@class='catalog-feature-enum__title' and text()='Полусухое']"))

    val filterByRedWineButton =
        `$`(Selectors.byXpath("//div[@class='catalog-feature-enum__title' and text()='Красное']"))

    fun getWine(): List<String> {
        val listOfWines = mutableListOf<String>()
        `$$`(By.ByClassName("product-card__title")).shouldBe(CollectionCondition.sizeGreaterThanOrEqual(1), Duration.ofSeconds(10)).forEach{
                webElement ->
            listOfWines.add(webElement.text.split("красное")[0].replace("Вино ", ""))
        }
        print(listOfWines)
        return listOfWines
    }
}