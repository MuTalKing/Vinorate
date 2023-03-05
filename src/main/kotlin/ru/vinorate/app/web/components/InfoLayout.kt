package ru.vinorate.app.web.components

import com.vaadin.flow.component.Text
import com.vaadin.flow.component.html.Div
import com.vaadin.flow.component.html.Image
import com.vaadin.flow.component.orderedlayout.FlexComponent
import com.vaadin.flow.component.orderedlayout.VerticalLayout
import com.vaadin.flow.dom.ElementFactory

class InfoLayout(
    wineName: String?,
    wineRate: String?,
    winePrice: String?,
    shopLogo: String?
): VerticalLayout() {
    init {
        addClassName("info-layout")
        isSpacing = false
        isPadding = false
        val image = Image(shopLogo, "wineName")
        image.style.set("margin-left", "0px")
        image.width = "auto"
        add(image)
        element.appendChild(ElementFactory.createStrong(wineName))
        add(Div(Text("Рейтинг: $wineRate")))
        add(Div(Text("Стоимость: $winePrice")))
        setHorizontalComponentAlignment(FlexComponent.Alignment.CENTER, this)
    }
}