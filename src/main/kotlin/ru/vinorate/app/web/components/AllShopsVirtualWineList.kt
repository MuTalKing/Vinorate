package ru.vinorate.app.web.components

import com.vaadin.flow.component.Component
import com.vaadin.flow.component.orderedlayout.FlexComponent
import com.vaadin.flow.component.virtuallist.VirtualList
import com.vaadin.flow.data.renderer.ComponentRenderer
import ru.vinorate.app.model.Shop
import ru.vinorate.app.repository.GlobusRepository
import ru.vinorate.app.repository.PerekrestokRepository

class AllShopsVirtualWineList(
    private val globusRepository: GlobusRepository,
    private val perekrestokRepository: PerekrestokRepository,
) : VirtualList<Shop>() {

    private val shopCardRenderer: ComponentRenderer<Component, Shop> = ComponentRenderer { shop ->
        val wineCardLayout = WineCardLayout()
        val imageWrapper = ImageWrapper(shop.picture, shop.name)
        val infoLayout = InfoLayout(
            wineName = shop.name,
            wineRate = shop.rate,
            winePrice = shop.price,
            wineColor = shop.color,
            wineSugar = shop.sugar,
            shopLogo = shop.shopLogo
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
        val wineList = mutableListOf<Shop>()
        globusRepository.selectAllWinesFromAllShopsOrderedByRateDesc().forEach {
            if (it?.sugar == "сухое" || it?.sugar == "полусухое" || it?.sugar == "брют") wineList.add(it)
        }
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
                val allWines = globusRepository.selectAllWinesFromAllShopsOrderedByRateDesc()
                setItems(filterWinesByColorAndPriceAndSugar(allWines, minPrice, maxPrice, color, sugarComboBox))
            }
            "Все магазины" -> {
                val allWines = globusRepository.selectAllWinesFromAllShopsOrderedByRateDesc()
                setItems(filterWinesByColorAndPriceAndSugar(allWines, minPrice, maxPrice, color, sugarComboBox))
            }
            "Перекрёсток" -> {
                val perekrestokWines = perekrestokRepository.findByOrderByRateDesc()
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
                val globusWines = globusRepository.findByOrderByRateDesc()
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
                "" -> setItems(globusRepository.searchAllWinesByName(name))
                "Все магазины" -> setItems(globusRepository.searchAllWinesByName(name))
                "Перекрёсток" -> setItems(
                    perekrestokRepository.searchPerekrestokWinesByName(
                        name
                    )
                )
                "Глобус" -> setItems(globusRepository.searchGlobusWinesByName(name))
            }
        }
    }

    fun filterWinesByColorAndPriceAndSugar(
        wines: Set<Shop>,
        minPrice: String,
        maxPrice: String,
        color: String,
        sugarComboBox: MutableSet<String>
    ): Collection<Shop?> =
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

    fun Shop.calculatePriceFromString(): Double {
        if (price != null) {
            return price!!.split(" ₽")[0]
                .replace(" ", "")
                .replace(",", ".")
                .toDouble()
        } else return 0.0
    }
}