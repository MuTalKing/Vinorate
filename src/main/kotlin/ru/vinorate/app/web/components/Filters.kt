package ru.vinorate.app.web.components

import com.vaadin.flow.component.icon.VaadinIcon
import com.vaadin.flow.component.orderedlayout.HorizontalLayout
import com.vaadin.flow.component.select.Select
import com.vaadin.flow.component.textfield.TextField
import com.vaadin.flow.data.value.ValueChangeMode

class Filters: HorizontalLayout() {
    val select: Select<String> = Select()
    val filterName = TextField()
    val minPrice = TextField()
    val maxPrice = TextField()
    init {
        addClassName("filters")
        filterName.label = "Поиск по названию"
        filterName.placeholder = "Введите название"
        filterName.element.setAttribute("aria-label", "search")
        filterName.prefixComponent = VaadinIcon.SEARCH.create()
        filterName.isClearButtonVisible = true
        filterName.valueChangeMode = ValueChangeMode.LAZY

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

        select.label = "Магазин"
        select.setItems("Все магазины", "Перекрёсток", "Глобус")
        select.placeholder = "Выберите магазин"

        add(filterName)
        add(select)
        add(minPrice)
        add(maxPrice)
    }
}