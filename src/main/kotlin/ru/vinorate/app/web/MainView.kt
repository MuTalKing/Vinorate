package ru.vinorate.app.web

import com.vaadin.flow.component.dependency.StyleSheet
import com.vaadin.flow.component.orderedlayout.FlexComponent
import com.vaadin.flow.component.orderedlayout.VerticalLayout
import com.vaadin.flow.router.PageTitle
import com.vaadin.flow.router.Route
import ru.vinorate.app.repository.PerekrestokRepository
import ru.vinorate.app.web.components.perekrestok.PerekrestokVirtualWineList

@PageTitle("Vinorate")
@Route(value = "vinorate")
@StyleSheet("")
class MainView(
    private val perekrestokRepository: PerekrestokRepository
) : VerticalLayout() {
    init {
        height = "100%"
        add(
            PerekrestokVirtualWineList(perekrestokRepository).apply {
                isMargin = true
                setHorizontalComponentAlignment(FlexComponent.Alignment.CENTER, this)
            }
        )
    }
}