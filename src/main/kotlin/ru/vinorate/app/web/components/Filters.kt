package ru.vinorate.app.web.components

import com.vaadin.flow.component.combobox.MultiSelectComboBox
import com.vaadin.flow.component.formlayout.FormLayout
import com.vaadin.flow.component.icon.VaadinIcon
import com.vaadin.flow.component.select.Select
import com.vaadin.flow.component.textfield.TextField
import com.vaadin.flow.data.value.ValueChangeMode

class Filters(
    private var allShopsVirtualWineList: AllShopsVirtualWineList
) : FormLayout() {
    var minPriceValue: String = ""
    var maxPriceValue: String = ""
    var shop: String = ""
    var color: String = ""
    var sugarComboBoxValues: MutableSet<String> = mutableSetOf()

    val selectShop: Select<String> = Select()
    val filterName = TextField()
    val minPrice = TextField()
    val maxPrice = TextField()
    val selectColor: Select<String> = Select()
    val sugarComboBox: MultiSelectComboBox<String> = MultiSelectComboBox()

    init {
        addClassName("filters")
        filterName.label = "Поиск по названию"
        filterName.placeholder = "Введите название"
        filterName.element.setAttribute("aria-label", "search")
        filterName.prefixComponent = VaadinIcon.SEARCH.create()
        filterName.isClearButtonVisible = true
        filterName.valueChangeMode = ValueChangeMode.LAZY
        filterName.className = "filterName"
        filterName.themeName = "filterName"
        filterName.isVisible = false

        minPrice.label = "Минимальная цена"
        minPrice.placeholder = "Введите цену"
        minPrice.isClearButtonVisible = true
        minPrice.prefixComponent = VaadinIcon.COIN_PILES.create()
        minPrice.valueChangeMode = ValueChangeMode.LAZY
        minPrice.isVisible = false

        maxPrice.label = "Максимальная цена"
        maxPrice.placeholder = "Введите цену"
        maxPrice.isClearButtonVisible = true
        maxPrice.prefixComponent = VaadinIcon.COIN_PILES.create()
        maxPrice.valueChangeMode = ValueChangeMode.LAZY
        maxPrice.isVisible = false

        selectShop.label = "Магазин"
        selectShop.setItems("Все магазины", "Перекрёсток", "Глобус")
        selectShop.placeholder = "Выберите магазин"
        selectShop.isVisible = false

        selectColor.label = "Цвет"
        selectColor.setItems("Красное", "Белое", "Розовое", "Игристое")
        selectColor.placeholder = "Выберите цвет"
        selectColor.isVisible = false

        sugarComboBox.label = "Сахар"
        sugarComboBox.setItems("Сухое", "Полусухое", "Сладкое", "Полусладкое", "Брют", "Extra dry")
        sugarComboBox.placeholder = "Содержание сахара"
        sugarComboBox.isVisible = false

        add(filterName)
        add(selectShop)
        add(minPrice)
        add(maxPrice)
        add(selectColor)
        add(sugarComboBox)
        setResponsiveSteps(
            ResponsiveStep("0", 1),
            ResponsiveStep("320px", 2),
            ResponsiveStep("700px", 6)
        )

        selectShop.addValueChangeListener {
            shop = it.value
            allShopsVirtualWineList.updateVirtualList(shop, minPriceValue, maxPriceValue, color, sugarComboBoxValues)
        }
        filterName.addValueChangeListener {
            allShopsVirtualWineList.updateVirtualListBySearchWineByName(
                it.value,
                shop,
                minPriceValue,
                maxPriceValue,
                color,
                sugarComboBoxValues
            )
        }
        minPrice.addValueChangeListener {
            minPriceValue = it.value
            allShopsVirtualWineList.updateVirtualList(shop, minPriceValue, maxPriceValue, color, sugarComboBoxValues)
        }
        maxPrice.addValueChangeListener {
            maxPriceValue = it.value
            allShopsVirtualWineList.updateVirtualList(shop, minPriceValue, maxPriceValue, color, sugarComboBoxValues)
        }

        selectColor.addValueChangeListener {
            color = it.value
            allShopsVirtualWineList.updateVirtualList(shop, minPriceValue, maxPriceValue, color, sugarComboBoxValues)
        }

        sugarComboBox.addValueChangeListener {
            sugarComboBoxValues = it.value.map { sugar -> sugar.lowercase() }.toMutableSet()
            allShopsVirtualWineList.updateVirtualList(shop, minPriceValue, maxPriceValue, color, sugarComboBoxValues)
        }
    }
}