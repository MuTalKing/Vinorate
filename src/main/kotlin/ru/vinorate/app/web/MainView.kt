package ru.vinorate.app.web

import com.vaadin.flow.component.dependency.StyleSheet
import com.vaadin.flow.component.orderedlayout.FlexComponent
import com.vaadin.flow.component.orderedlayout.VerticalLayout
import com.vaadin.flow.router.PageTitle
import com.vaadin.flow.router.Route
import ru.vinorate.app.model.Shop
import ru.vinorate.app.repository.GlobusRepository
import ru.vinorate.app.repository.PerekrestokRepository
import ru.vinorate.app.web.components.AllShopsVirtualWineList
import ru.vinorate.app.web.components.Filters

@PageTitle("Vinorate")
@Route(value = "")
@StyleSheet("")
class MainView(
    private val perekrestokRepository: PerekrestokRepository,
    private val globusRepository: GlobusRepository
) : VerticalLayout() {
    val allShopsVirtualWineList: AllShopsVirtualWineList = AllShopsVirtualWineList(globusRepository)
    var minPrice: String = ""
    var maxPrice: String = ""
    var shop: String = ""
    var color: String = ""
    var sugarComboBox: MutableSet<String> = mutableSetOf()

    init {
        height = "100%"
        width = "auto"
        isMargin = false
        isPadding = false
        style.set("margin-top", "0px")
        val filters = Filters()

        filters.selectShop.addValueChangeListener {
            shop = it.value
            updateVirtualList(shop, minPrice, maxPrice)
        }
        filters.filterName.addValueChangeListener {
            updateVirtualListBySearchWineByName(it.value, shop)
        }
        filters.minPrice.addValueChangeListener {
            minPrice = it.value
            updateVirtualList(shop, minPrice, maxPrice)
        }
        filters.maxPrice.addValueChangeListener {
            maxPrice = it.value
            updateVirtualList(shop, minPrice, maxPrice)
        }

        filters.selectColor.addValueChangeListener {
            color = it.value
            updateVirtualList(shop, minPrice, maxPrice)
        }

        filters.sugarComboBox.addValueChangeListener {
            sugarComboBox = it.value
            updateVirtualList(shop, minPrice, maxPrice)
        }

        add(
            filters.apply {
                isMargin = false
                isPadding = false
                alignItems = FlexComponent.Alignment.CENTER
                justifyContentMode = FlexComponent.JustifyContentMode.AROUND
                setHorizontalComponentAlignment(FlexComponent.Alignment.CENTER, this)
            }
        )
        add(
            allShopsVirtualWineList.apply {
                isMargin = true
                style.set("padding-left", "20px")
                setHorizontalComponentAlignment(FlexComponent.Alignment.CENTER, this)
            }
        )
    }

    fun updateVirtualList(shop: String, minPrice: String, maxPrice: String) {
        when (shop) {
            "" -> {
                val allWines = globusRepository.selectAllWinesFromAllShopsOrderedByRateDesc()
                allShopsVirtualWineList.setItems(filterWinesByColorAndPriceAndSugar(allWines, minPrice, maxPrice))
            }
            "Все магазины" -> {
                val allWines = globusRepository.selectAllWinesFromAllShopsOrderedByRateDesc()
                allShopsVirtualWineList.setItems(filterWinesByColorAndPriceAndSugar(allWines, minPrice, maxPrice))
            }
            "Перекрёсток" -> {
                val perekrestokWines = perekrestokRepository.findByOrderByRateDesc()
                allShopsVirtualWineList.setItems(
                    filterWinesByColorAndPriceAndSugar(
                        perekrestokWines,
                        minPrice,
                        maxPrice
                    )
                )
            }
            "Глобус" -> {
                val globusWines = globusRepository.findByOrderByRateDesc()
                allShopsVirtualWineList.setItems(filterWinesByColorAndPriceAndSugar(globusWines, minPrice, maxPrice))
            }
        }
    }

    fun updateVirtualListBySearchWineByName(name: String, shop: String) {
        if (name.isEmpty()) updateVirtualList(shop, minPrice, maxPrice)
        else {
            when (shop) {
                "" -> allShopsVirtualWineList.setItems(globusRepository.searchAllWinesByName(name))
                "Все магазины" -> allShopsVirtualWineList.setItems(globusRepository.searchAllWinesByName(name))
                "Перекрёсток" -> allShopsVirtualWineList.setItems(
                    perekrestokRepository.searchPerekrestokWinesByName(
                        name
                    )
                )
                "Глобус" -> allShopsVirtualWineList.setItems(globusRepository.searchGlobusWinesByName(name))
            }
        }
    }

    fun updateVirtualListBySearchWineByPrice(minPrice: String, maxPrice: String) {
        val allWines = globusRepository.selectAllWinesFromAllShopsOrderedByRateDesc()
        allShopsVirtualWineList.setItems(filterWinesByColorAndPriceAndSugar(allWines, minPrice, maxPrice))
    }

    fun filterWinesByColorAndPriceAndSugar(wines: Set<Shop>, minPrice: String, maxPrice: String): Collection<Shop?> {
        when (color) {
            "Красное" -> wines.asSequence().filter { it.color == "Красное" }.toSet()
            "Белое" -> wines.asSequence().filter { it.color == "Белое" }.toSet()
            "Розовое" -> wines.asSequence().filter { it.color == "Розовое" }.toSet()
            "Игристое" -> wines.asSequence().filter { it.color == "Игристое" }.toSet()
        }

        if (minPrice.isNotEmpty() && maxPrice.isEmpty()) {
            wines.asSequence().filter { it.calculatePriceFromString() >= minPrice.toDouble() }.toSet()
        } else if (minPrice.isEmpty() && maxPrice.isNotEmpty()) {
            wines.asSequence().filter { it.calculatePriceFromString() <= maxPrice.toDouble() }.toSet()
        } else {
            wines.asSequence()
                .filter { it.calculatePriceFromString() >= minPrice.toDouble() && it.calculatePriceFromString() <= maxPrice.toDouble() }
                .toSet()
        }

        if (sugarComboBox.isEmpty()) {
            wines.asSequence().filter { it.sugar == "сухое" || it.sugar == "полусухое" }.toSet()
        } else {
            sugarComboBox.forEach { sugar ->
                when (sugar) {
                    "Сухое" -> wines.asSequence().filter { it.sugar == "сухое" }.toSet()
                    "Полусухое" -> wines.asSequence().filter { it.sugar == "полусухое" }.toSet()
                    "Сладкое" -> wines.asSequence().filter { it.sugar == "сладкое" }.toSet()
                    "Полусладкое" -> wines.asSequence().filter { it.sugar == "полусладкое" }.toSet()
                }
            }
        }

        return wines.sortedByDescending { it.rate }
    }

    fun Shop.calculatePriceFromString(): Double {
        if (price != null) {
            return price!!.split(" ₽")[0]
                .replace(" ", "")
                .replace(",", ".")
                .toDouble()
        }
        else return 0.0
    }
}