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
            updateVirtualListBySearchWineByName(it.value)
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
                allShopsVirtualWineList.setItems(findWinesByMinAndMaxPrice(allWines, minPrice, maxPrice))
            }
            "Все магазины" -> {
                val allWines = globusRepository.selectAllWinesFromAllShopsOrderedByRateDesc()
                allShopsVirtualWineList.setItems(findWinesByMinAndMaxPrice(allWines, minPrice, maxPrice))
            }
            "Перекрёсток" -> {
                val perekrestokWines = perekrestokRepository.findByOrderByRateDesc()
                allShopsVirtualWineList.setItems(findWinesByMinAndMaxPrice(perekrestokWines, minPrice, maxPrice))
            }
            "Глобус" -> {
                val globusWines = globusRepository.findByOrderByRateDesc()
                allShopsVirtualWineList.setItems(findWinesByMinAndMaxPrice(globusWines, minPrice, maxPrice))
            }
        }
    }

    fun updateVirtualListBySearchWineByName(name: String) {
        if(name.isEmpty()) allShopsVirtualWineList.setItems(globusRepository.selectAllWinesFromAllShopsOrderedByRateDesc())
        allShopsVirtualWineList.setItems(globusRepository.searchAllWinesByName(name))
    }

    fun updateVirtualListBySearchWineByPrice(minPrice: String, maxPrice: String) {
        val allWines = globusRepository.selectAllWinesFromAllShopsOrderedByRateDesc()
        allShopsVirtualWineList.setItems(findWinesByMinAndMaxPrice(allWines, minPrice, maxPrice))
    }

    fun findWinesByMinAndMaxPrice(wines: Set<Shop?>, minPrice: String, maxPrice: String): Collection<Shop?> {
        val wineListWithColorAndPrice = mutableListOf<Shop>()
        val wineListWithColor = mutableListOf<Shop>()
        val wineListWithColorAndPriceAndSugar = mutableListOf<Shop>()
        when(color) {
            "" -> wines.forEach {
                wineListWithColor.add(it!!)
            }
            "Красное" -> wines.forEach {
                if(it!!.color == "Красное") wineListWithColor.add(it)
            }
            "Белое" -> wines.forEach {
                if(it!!.color == "Белое") wineListWithColor.add(it)
            }
            "Розовое" -> wines.forEach {
                if(it!!.color == "Розовое") wineListWithColor.add(it)
            }
            "Игристое" -> wines.forEach {
                if(it!!.color == "Игристое") wineListWithColor.add(it)
            }
        }
        if (minPrice.isEmpty() && maxPrice.isEmpty()) {
            wineListWithColor.forEach {
                wineListWithColorAndPrice.add(it)
            }
        }
        else if (minPrice.isNotEmpty() && maxPrice.isEmpty()) {
            wineListWithColor.forEach {
                val price = it.price?.split(" ₽")?.get(0)?.replace(" ", "")?.replace(",", ".")?.toDouble()!!
                if (price >= minPrice.toDouble()) wineListWithColorAndPrice.add(it)
            }
        }
        else if (minPrice.isEmpty() && maxPrice.isNotEmpty()) {
            wineListWithColor.forEach {
                val price = it.price?.split(" ₽")?.get(0)?.replace(" ", "")?.replace(",", ".")?.toDouble()!!
                if (price <= maxPrice.toDouble()) wineListWithColorAndPrice.add(it)
            }
        }
        else {
            wineListWithColor.forEach {
                val price = it.price?.split(" ₽")?.get(0)?.replace(" ", "")?.replace(",", ".")?.toDouble()!!
                if (price >= minPrice.toDouble() &&  price <= maxPrice.toDouble()) wineListWithColorAndPrice.add(it)
            }
        }
        if (sugarComboBox.isEmpty()) {
            wineListWithColorAndPrice.forEach {
                if (it.sugar == "сухое" || it.sugar == "полусухое") wineListWithColorAndPriceAndSugar.add(it)
            }
        }
        else {
            sugarComboBox.forEach {sugar ->
                when(sugar) {
                    "Сухое" -> wineListWithColorAndPrice.forEach {
                        if(it.sugar == "сухое")wineListWithColorAndPriceAndSugar.add(it)
                    }
                    "Полусухое" -> wineListWithColorAndPrice.forEach {
                        if(it.sugar == "полусухое")wineListWithColorAndPriceAndSugar.add(it)
                    }
                    "Сладкое" -> wineListWithColorAndPrice.forEach {
                        if(it.sugar == "сладкое")wineListWithColorAndPriceAndSugar.add(it)
                    }
                    "Полусладкое" -> wineListWithColorAndPrice.forEach {
                        if(it.sugar == "полусладкое")wineListWithColorAndPriceAndSugar.add(it)
                    }
                }
            }
        }
        return wineListWithColorAndPriceAndSugar.sortedByDescending{it.rate}
    }
}