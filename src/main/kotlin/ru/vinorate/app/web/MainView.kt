package ru.vinorate.app.web

import com.vaadin.flow.component.Component
import com.vaadin.flow.component.HtmlContainer
import com.vaadin.flow.component.Text
import com.vaadin.flow.component.dependency.StyleSheet
import com.vaadin.flow.component.html.Div
import com.vaadin.flow.component.html.Image
import com.vaadin.flow.component.orderedlayout.FlexComponent
import com.vaadin.flow.component.orderedlayout.HorizontalLayout
import com.vaadin.flow.component.orderedlayout.VerticalLayout
import com.vaadin.flow.component.virtuallist.VirtualList
import com.vaadin.flow.data.renderer.ComponentRenderer
import com.vaadin.flow.dom.ElementFactory
import com.vaadin.flow.router.PageTitle
import com.vaadin.flow.router.Route
import ru.vinorate.app.model.Perekrestok
import ru.vinorate.app.repository.PerekrestokRepository

@PageTitle("Vinorate")
@Route(value = "vinorate")
@StyleSheet("")
class MainView(
    private val perekrestokRepository: PerekrestokRepository
): VerticalLayout() {


    private val perekrestokCardRenderer: ComponentRenderer<Component, Perekrestok> = ComponentRenderer { perekrestok ->
        val cardLayout = HorizontalLayout()
        cardLayout.addClassName("card-layout")
        val htmlContainer = HtmlContainer("image-wrapper")
        htmlContainer.setWidth("200px")
        htmlContainer.setHeight("300px")
        htmlContainer.addClassName("image-wrapper")
        val image = Image(perekrestok.picture, perekrestok.name)
        image.setHeight("250px")
        htmlContainer.add(image)
//        setHorizontalComponentAlignment(FlexComponent.Alignment.CENTER, image)
        val infoLayout = VerticalLayout()
        infoLayout.addClassName("info-layout")
        infoLayout.isSpacing = false
        infoLayout.isPadding = false
        infoLayout.element.appendChild(ElementFactory.createStrong(perekrestok.name))
        infoLayout.add(Div(Text("Рейтинг: ${perekrestok.rate}")))
        infoLayout.add(Div(Text("Стоимость: ${perekrestok.price}")))
        infoLayout.setHorizontalComponentAlignment(FlexComponent.Alignment.CENTER, infoLayout)
        cardLayout.add(htmlContainer, infoLayout)
        cardLayout.setVerticalComponentAlignment(FlexComponent.Alignment.CENTER, cardLayout)
        cardLayout
    }

    init {
        
        setHeight("100%")
        val virtualList: VirtualList<Perekrestok> = VirtualList<Perekrestok>().apply {
            isMargin = true
            setHorizontalComponentAlignment(FlexComponent.Alignment.CENTER, this)
            setItems(perekrestokRepository.findAll())
            setRenderer(perekrestokCardRenderer)
        }
        virtualList.setHeight("100%")
        virtualList.setWidth("30%")
        add(virtualList)
    }
}