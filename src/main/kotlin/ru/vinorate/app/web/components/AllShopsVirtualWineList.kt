package ru.vinorate.app.web.components

import com.vaadin.flow.component.Component
import com.vaadin.flow.component.orderedlayout.FlexComponent
import com.vaadin.flow.component.virtuallist.VirtualList
import com.vaadin.flow.data.renderer.ComponentRenderer
import ru.vinorate.app.model.Shop
import ru.vinorate.app.repository.GlobusRepository

class AllShopsVirtualWineList(
    private val globusRepository: GlobusRepository
): VirtualList<Shop>() {

    private val shopCardRenderer: ComponentRenderer<Component, Shop> = ComponentRenderer { shop ->
        val wineCardLayout = WineCardLayout()
        val imageWrapper = ImageWrapper(shop.picture, shop.name)
        val infoLayout = InfoLayout(
            wineName = shop.name,
            wineRate = shop.rate,
            winePrice = shop.price,
            wineColor = shop.color,
            wineSugar = shop.sugar,
            shopLogo = shop.shopLogo
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
        val wineList = mutableListOf<Shop>()
        globusRepository.selectAllWinesFromAllShopsOrderedByRateDesc().forEach {
            if (it?.sugar == "сухое" || it?.sugar == "полусухое" || it?.sugar == "брют") wineList.add(it)
        }
        setItems(wineList)
        setRenderer(shopCardRenderer)
    }


}