package ru.vinorate.app.web.components

import com.vaadin.flow.component.HtmlContainer
import com.vaadin.flow.component.Tag
import com.vaadin.flow.component.html.Image

@Tag("image-wrapper")
class ImageWrapper(url: String?, name: String?) : HtmlContainer() {

    init {
        width = "200px"
        height = "300px"
        addClassName("image-wrapper")
        val image = Image(url, name)
        image.height = "250px"
        add(image)
    }
}