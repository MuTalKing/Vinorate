package ru.vinorate.app.web.components.perekrestok

import com.vaadin.flow.component.Component
import com.vaadin.flow.component.orderedlayout.FlexComponent
import com.vaadin.flow.component.virtuallist.VirtualList
import com.vaadin.flow.data.renderer.ComponentRenderer
import ru.vinorate.app.model.Perekrestok
import ru.vinorate.app.repository.PerekrestokRepository
import ru.vinorate.app.web.components.ImageAndInfoLayout
import ru.vinorate.app.web.components.ImageWrapper
import ru.vinorate.app.web.components.InfoLayout
import ru.vinorate.app.web.components.WineCardLayout

class PerekrestokVirtualWineList(
    private val perekrestokRepository: PerekrestokRepository
): VirtualList<Perekrestok>() {
    private val perekrestokCardRenderer: ComponentRenderer<Component, Perekrestok> = ComponentRenderer { perekrestok ->
        val wineCardLayout = WineCardLayout()
        val imageWrapper = ImageWrapper(perekrestok.picture, perekrestok.name)
        val infoLayout = InfoLayout(
            wineName = perekrestok.name,
            wineRate = perekrestok.rate,
            winePrice = perekrestok.price,
            wineColor = perekrestok.color,
            wineSugar = perekrestok.sugar,
            shopLogo = perekrestok.shopLogo
        )
        val imageAndInfoLayout = ImageAndInfoLayout()
        imageAndInfoLayout.add(imageWrapper, infoLayout)
        imageAndInfoLayout.alignItems = FlexComponent.Alignment.CENTER
        imageAndInfoLayout.justifyContentMode = FlexComponent.JustifyContentMode.CENTER
        wineCardLayout.add(imageAndInfoLayout)
        wineCardLayout
    }

    init {
        height = "100%"
        width = "100%"
        setItems(perekrestokRepository.findByOrderByRateDesc())
        setRenderer(perekrestokCardRenderer)
    }


}