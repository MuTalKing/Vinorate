package ru.vinorate.app.web.components

import com.vaadin.flow.component.orderedlayout.FlexComponent
import com.vaadin.flow.component.orderedlayout.HorizontalLayout

class WineCardLayout: HorizontalLayout() {
    init {
        addClassName("wine-card-layout")
        justifyContentMode = FlexComponent.JustifyContentMode.CENTER
    }
}