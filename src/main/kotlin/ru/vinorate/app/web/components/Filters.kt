package ru.vinorate.app.web.components

import com.vaadin.flow.component.combobox.MultiSelectComboBox
import com.vaadin.flow.component.formlayout.FormLayout
import com.vaadin.flow.component.icon.VaadinIcon
import com.vaadin.flow.component.select.Select
import com.vaadin.flow.component.textfield.TextField
import com.vaadin.flow.data.value.ValueChangeMode

class Filters: FormLayout() {
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

        minPrice.label = "Минимальная цена"
        minPrice.placeholder = "Введите цену"
        minPrice.isClearButtonVisible = true
        minPrice.prefixComponent = VaadinIcon.COIN_PILES.create()
        minPrice.valueChangeMode = ValueChangeMode.LAZY

        maxPrice.label = "Максимальная цена"
        maxPrice.placeholder = "Введите цену"
        maxPrice.isClearButtonVisible = true
        maxPrice.prefixComponent = VaadinIcon.COIN_PILES.create()
        maxPrice.valueChangeMode = ValueChangeMode.LAZY

        selectShop.label = "Магазин"
        selectShop.setItems("Все магазины", "Перекрёсток", "Глобус")
        selectShop.placeholder = "Выберите магазин"

        selectColor.label = "Цвет"
        selectColor.setItems("Красное", "Белое", "Розовое", "Игристое")
        selectColor.placeholder = "Выберите цвет"

        sugarComboBox.label = "Сахар"
        sugarComboBox.setItems("Сухое", "Полусухое", "Сладкое", "Полусладкое")
        sugarComboBox.placeholder = "Содержание сахара"

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
    }
}