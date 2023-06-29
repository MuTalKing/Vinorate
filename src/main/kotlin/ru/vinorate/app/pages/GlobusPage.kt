package ru.vinorate.app.pages

import com.codeborne.selenide.CollectionCondition
import com.codeborne.selenide.Selectors
import com.codeborne.selenide.Selenide.`$`
import com.codeborne.selenide.Selenide.`$$`
import org.springframework.stereotype.Component
import java.time.Duration

@Component
class GlobusPage {

    val confirmAgeButton =
        `$`(Selectors.byXpath("//div[@id='minimumAgeWarningPopupLarge']//input[@type='button' and @value='Да, мне исполнилось']"))

    val items64CountOnPage =
        `$`(Selectors.byXpath("//li[@class='active-result' and text()=64]"))

    val closeButton by lazy {
        `$`(Selectors.byXpath("//button[@class='close']"))
    }

    val pagesCount by lazy {
        `$`(Selectors.byXpath("//div[@class='catalog-section__items d-row d-row_ib js-catalog-section-items']")).getAttribute("data-pageCount")
    }
    val nextPageButton by lazy {
        `$`(Selectors.byXpath("//li[@class = 'nav_pager__arrow']//i[@class = 'ig ig-right trans']"))
    }

    val itemsCountSelector by lazy {
        `$`(Selectors.byXpath("//div[contains(@class, 'chosen_sm js-count')]"))
    }

    val cookiesAccept by lazy {
        `$`(Selectors.byClassName("cookies-banner_set"))
    }

    fun getWineNames(color: String): List<String> {
        val listOfWineNames = mutableListOf<String>()
        `$$`(Selectors.byXpath("//div[@class='catalog-section__items d-row d-row_ib js-catalog-section-items']//div[@class!='catalog-section__item is-notavailable']/div[contains(@class, 'catalog-section__item--main')]//span[@class='catalog-section__item__title']")).shouldBe(CollectionCondition.sizeGreaterThanOrEqual(1), Duration.ofSeconds(10)).forEach{
                webElement ->
            listOfWineNames.add(webElement.text.split(color.lowercase())[0].replace("Вино ", ""))
        }
        return listOfWineNames
    }

    fun getWinePrices(): List<String> {
        val listOfWinePrices = mutableListOf<String>()
        `$$`(Selectors.byXpath("//div[@class='catalog-section__items d-row d-row_ib js-catalog-section-items']//div[contains(@class, 'catalog-section__item--main')]//span[@class='item-price__rub']")).shouldBe(CollectionCondition.sizeGreaterThanOrEqual(1), Duration.ofSeconds(10)).forEach{
                webElement ->
            listOfWinePrices.add("${webElement.text},99 ₽")
        }
        return listOfWinePrices
    }

    fun getWinePictures(): List<String> {
        val listOfWinePictures = mutableListOf<String>()
        `$$`(Selectors.byXpath("//div[@class='catalog-section__items d-row d-row_ib js-catalog-section-items']//img[@class=' lazyloaded']")).shouldBe(CollectionCondition.sizeGreaterThanOrEqual(1), Duration.ofSeconds(10)).forEach{
                webElement ->
            listOfWinePictures.add(webElement.getAttribute("src")!!)
        }
        return listOfWinePictures
    }

    fun getWineSugar(): List<String> {
        val listOfWineSugar = mutableListOf<String>()
        `$$`(Selectors.byXpath("//div[@class='catalog-section__items d-row d-row_ib js-catalog-section-items']//div[@class!='catalog-section__item is-notavailable']/div[contains(@class, 'catalog-section__item--main')]//span[@class='catalog-section__item__title']")).shouldBe(CollectionCondition.sizeGreaterThanOrEqual(1), Duration.ofSeconds(10)).forEach{
                webElement ->
            if (webElement.text.contains("сухое")) {
                listOfWineSugar.add("сухое")
            }
            else if (webElement.text.contains("полусухое")) {
                listOfWineSugar.add("полусухое")
            }
            else if (webElement.text.contains("полусладкое")) {
                listOfWineSugar.add("полусладкое")
            }
            else if (webElement.text.contains("сладкое")) {
                listOfWineSugar.add("сладкое")
            }
            else {
                listOfWineSugar.add("-")
            }
        }
        return listOfWineSugar
    }
}