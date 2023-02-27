package ru.vinorate.app.web.components.placeholders

import com.vaadin.flow.component.html.Div
import com.vaadin.flow.component.select.Select

class ShopSelectPlaceHolder: Div() {
    init {
        val select: Select<String> = Select();
        select.label = "Магазин"
        select.setItems("Перекрёсток", "Глобус")
        select.placeholder = "Выберите магазин"

        add(select);
    }
}