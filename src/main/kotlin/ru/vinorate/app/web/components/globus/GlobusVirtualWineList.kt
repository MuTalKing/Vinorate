package ru.vinorate.app.web.components.globus

import com.vaadin.flow.component.Component
import com.vaadin.flow.component.orderedlayout.FlexComponent
import com.vaadin.flow.component.virtuallist.VirtualList
import com.vaadin.flow.data.renderer.ComponentRenderer
import ru.vinorate.app.model.Globus
import ru.vinorate.app.repository.GlobusRepository
import ru.vinorate.app.web.components.ImageAndInfoLayout
import ru.vinorate.app.web.components.ImageWrapper
import ru.vinorate.app.web.components.InfoLayout
import ru.vinorate.app.web.components.WineCardLayout

class GlobusVirtualWineList(
    private val globusRepository: GlobusRepository
): VirtualList<Globus>() {
    private val globusCardRenderer: ComponentRenderer<Component, Globus> = ComponentRenderer { globus ->
        val wineCardLayout = WineCardLayout()
        val imageWrapper = ImageWrapper(globus.picture, globus.name)
        val infoLayout = InfoLayout(
            wineName = globus.name,
            wineRate = globus.rate,
            winePrice = globus.price,
            shopLogo = globus.shopLogo
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
        setItems(globusRepository.findByOrderByRateDesc())
        setRenderer(globusCardRenderer)
    }


}