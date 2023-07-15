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

    fun getWineNames(color: String): List<String> {
        val listOfWineNames = mutableListOf<String>()
        `$$`(By.ByClassName("product-card__title")).shouldBe(
            CollectionCondition.sizeGreaterThanOrEqual(1),
            Duration.ofSeconds(10)
        ).forEach { webElement ->
            if (webElement.text.contains(color.lowercase())) {
                listOfWineNames.add(webElement.text.split(color.lowercase())[0].replace("Вино ", ""))
            } else if (webElement.text.contains("розовое")) {
                listOfWineNames.add(webElement.text.split("розовое".lowercase())[0].replace("Вино ", ""))
            } else listOfWineNames.add(webElement.text.split(color.lowercase())[0].replace("Вино ", ""))
        }
        return listOfWineNames
    }

    fun getSparklingWineNames(color: String): List<String> {
        val listOfWineNames = mutableListOf<String>()
        `$$`(By.ByClassName("product-card__title")).shouldBe(
            CollectionCondition.sizeGreaterThanOrEqual(1),
            Duration.ofSeconds(10)
        ).forEach { webElement ->
            listOfWineNames.add(webElement.text.split(color.lowercase())[0].replace("Вино ", ""))
        }
        return listOfWineNames
    }

    fun getWinePrices(): List<String> {
        val listOfWinePrices = mutableListOf<String>()
        `$$`(By.ByClassName("price-new")).shouldBe(
            CollectionCondition.sizeGreaterThanOrEqual(1),
            Duration.ofSeconds(10)
        ).forEach { webElement ->
            listOfWinePrices.add(webElement.text.split("&")[0])
        }
        return listOfWinePrices
    }

    fun getWinePictures(): List<String> {
        val listOfWinePictures = mutableListOf<String>()
        `$$`(By.ByClassName("product-card__image")).shouldBe(
            CollectionCondition.sizeGreaterThanOrEqual(1),
            Duration.ofSeconds(10)
        ).forEach { webElement ->
            listOfWinePictures.add(webElement.getAttribute("src")!!)
        }
        return listOfWinePictures
    }

    fun getWineSugar(): List<String> {
        val listOfWineSugar = mutableListOf<String>()
        `$$`(By.ByClassName("product-card__title")).shouldBe(
            CollectionCondition.sizeGreaterThanOrEqual(1),
            Duration.ofSeconds(10)
        ).forEach { webElement ->
            if (webElement.text.contains(" сухое")) {
                listOfWineSugar.add("сухое")
            } else if (webElement.text.contains("полусухое")) {
                listOfWineSugar.add("полусухое")
            } else if (webElement.text.contains("полусладкое")) {
                listOfWineSugar.add("полусладкое")
            } else if (webElement.text.contains("сладкое")) {
                listOfWineSugar.add("сладкое")
            } else if (webElement.text.contains("брют")) {
                listOfWineSugar.add("брют")
            } else {
                listOfWineSugar.add("-")
            }
        }
        return listOfWineSugar
    }
}