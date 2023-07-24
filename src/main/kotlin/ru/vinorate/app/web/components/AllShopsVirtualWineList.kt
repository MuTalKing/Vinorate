package ru.vinorate.app.web.components

import com.vaadin.flow.component.Component
import com.vaadin.flow.component.orderedlayout.FlexComponent
import com.vaadin.flow.component.virtuallist.VirtualList
import com.vaadin.flow.data.renderer.ComponentRenderer
import ru.vinorate.app.dto.Wine
import ru.vinorate.app.repository.GlobusRepository
import ru.vinorate.app.repository.PerekrestokRepository

class AllShopsVirtualWineList(
    private val globusRepository: GlobusRepository,
    private val perekrestokRepository: PerekrestokRepository,
) : VirtualList<Wine>() {

    val globusWines by lazy {
        globusRepository.findByOrderByRateDesc().map {
            it.toWineDTO()
        }.toSet()
    }

    val perekrestokWines by lazy {
        perekrestokRepository.findByOrderByRateDesc().map {
            it.toWineDTO()
        }.toSet()
    }

    private val shopCardRenderer: ComponentRenderer<Component, Wine> = ComponentRenderer { wine ->
        val wineCardLayout = WineCardLayout()
        val imageWrapper = ImageWrapper(wine.picture, wine.name)
        val infoLayout = InfoLayout(
            wineName = wine.name,
            wineRate = wine.rate,
            winePrice = wine.price,
            wineColor = wine.color,
            wineSugar = wine.sugar,
            shopLogo = wine.shopLogo
        )
        val imageAndInfoLayout = ImageAndInfoLayout()
        imageAndInfoLayout.add(imageWrapper, infoLayout)
        imageAndInfoLayout.alignItems = FlexComponent.Alignment.CENTER
        imageAndInfoLayout.justifyContentMode = FlexComponent.JustifyContentMode.CENTER
        wineCardLayout.add(imageAndInfoLayout)
        wineCardLayout
    }

    init {
        height = "100%"
        width = "100%"
        val wineList = globusWines
            .plus(perekrestokWines)
            .filter {
                it.sugar == "сухое" || it.sugar == "полусухое" || it.sugar == "брют" || it.sugar == "extra dry"
            }
            .sortedByDescending { it.rate }
            .toSet()
        setItems(wineList)
        setRenderer(shopCardRenderer)
    }

    fun updateVirtualList(
        shop: String,
        minPrice: String,
        maxPrice: String,
        color: String,
        sugarComboBox: MutableSet<String>
    ) {
        when (shop) {
            "" -> {
                val allWines = globusWines
                    .plus(perekrestokWines)
                    .sortedByDescending { it.rate }
                    .toSet()
                setItems(filterWinesByColorAndPriceAndSugar(allWines, minPrice, maxPrice, color, sugarComboBox))
            }
            "Все магазины" -> {
                val allWines = globusWines
                    .plus(perekrestokWines)
                    .sortedByDescending { it.rate }
                    .toSet()
                setItems(filterWinesByColorAndPriceAndSugar(allWines, minPrice, maxPrice, color, sugarComboBox))
            }
            "Перекрёсток" -> {
                setItems(
                    filterWinesByColorAndPriceAndSugar(
                        perekrestokWines,
                        minPrice,
                        maxPrice,
                        color,
                        sugarComboBox
                    )
                )
            }
            "Глобус" -> {
                setItems(filterWinesByColorAndPriceAndSugar(globusWines, minPrice, maxPrice, color, sugarComboBox))
            }
        }
    }

    fun updateVirtualListBySearchWineByName(
        name: String,
        shop: String,
        minPrice: String,
        maxPrice: String,
        color: String,
        sugarComboBox: MutableSet<String>
    ) {
        if (name.isEmpty()) updateVirtualList(shop, minPrice, maxPrice, color, sugarComboBox)
        else {
            when (shop) {
                "" -> setItems(globusWines.plus(perekrestokWines).filter { it.name.contains(name.lowercase()) }
                    .sortedByDescending { it.rate }.toSet())
                "Все магазины" -> setItems(
                    globusWines.plus(perekrestokWines).filter { it.name.contains(name.lowercase()) }
                        .sortedByDescending { it.rate }.toSet()
                )
                "Перекрёсток" -> setItems(
                    perekrestokRepository.searchPerekrestokWinesByName(
                        name
                    ).map { it.toWineDTO() }.sortedByDescending { it.rate }.toSet()
                )
                "Глобус" -> setItems(globusRepository.searchGlobusWinesByName(name).map { it.toWineDTO() }
                    .sortedByDescending { it.rate }.toSet())
            }
        }
    }

    fun filterWinesByColorAndPriceAndSugar(
        wines: Set<Wine>,
        minPrice: String,
        maxPrice: String,
        color: String,
        sugarComboBox: MutableSet<String>
    ): Collection<Wine?> =
        wines.asSequence()
            .filter {
                when (color) {
                    "Красное" -> it.color == "Красное"
                    "Белое" -> it.color == "Белое"
                    "Розовое" -> it.color == "Розовое"
                    "Игристое" -> it.color == "Игристое"
                    else -> true
                }
            }
            .filter {
                if (minPrice.isNotEmpty() && maxPrice.isEmpty()) {
                    it.calculatePriceFromString() >= minPrice.toDouble()
                } else if (minPrice.isEmpty() && maxPrice.isNotEmpty()) {
                    it.calculatePriceFromString() <= maxPrice.toDouble()
                } else if (minPrice.isNotEmpty() && maxPrice.isNotEmpty()) {
                    it.calculatePriceFromString() >= minPrice.toDouble() && it.calculatePriceFromString() <= maxPrice.toDouble()
                } else true
            }
            .filter {
                if (sugarComboBox.isEmpty()) {
                    it.sugar == "сухое" || it.sugar == "полусухое" || it.sugar == "брют" || it.sugar == "extra dry"
                } else {
                    it.sugar in sugarComboBox
                }
            }
            .toSet().sortedByDescending { it.rate }

    fun Wine.calculatePriceFromString(): Double {
        return price.split(" ₽")[0]
            .replace(" ", "")
            .replace(",", ".")
            .toDouble()
    }
}