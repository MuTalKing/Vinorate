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
    init {
        height = "100%"
        width = "auto"
        isMargin = false
        isPadding = false
        style.set("margin-top", "0px")
        val filters = Filters()

        filters.select.addValueChangeListener {
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
        val mutableList = mutableListOf<Shop>()
        if(minPrice.isEmpty() && maxPrice.isEmpty()){
            return wines
        }
        else if (minPrice.isNotEmpty() && maxPrice.isEmpty()) {
            wines.forEach {
                val price = it?.price?.split(" ₽")?.get(0)?.replace(" ", "")?.replace(",", ".")?.toDouble()!!
                if (price >= minPrice.toDouble()) mutableList.add(it)
            }
            return mutableList
        }
        else if (minPrice.isEmpty() && maxPrice.isNotEmpty()) {
            wines.forEach {
                val price = it?.price?.split(" ₽")?.get(0)?.replace(" ", "")?.replace(",", ".")?.toDouble()!!
                if (price <= maxPrice.toDouble()) mutableList.add(it)
            }
            return mutableList
        }
        else {
            wines.forEach {
                val price = it?.price?.split(" ₽")?.get(0)?.replace(" ", "")?.replace(",", ".")?.toDouble()!!
                if (price >= minPrice.toDouble() &&  price <= maxPrice.toDouble()) mutableList.add(it)
            }
            return mutableList
        }
    }
}