package ru.vinorate.app.web

import com.vaadin.flow.component.dependency.StyleSheet
import com.vaadin.flow.component.orderedlayout.FlexComponent
import com.vaadin.flow.component.orderedlayout.VerticalLayout
import com.vaadin.flow.router.PageTitle
import com.vaadin.flow.router.Route
import ru.vinorate.app.repository.GlobusRepository
import ru.vinorate.app.repository.PerekrestokRepository
import ru.vinorate.app.web.components.AllShopsVirtualWineList
import ru.vinorate.app.web.components.Filters

@PageTitle("Vinorate")
@Route(value = "")
@StyleSheet("")
class MainView(
    private val perekrestokRepository: PerekrestokRepository,
    private val globusRepository: GlobusRepository
) : VerticalLayout() {
    val allShopsVirtualWineList: AllShopsVirtualWineList = AllShopsVirtualWineList(globusRepository, perekrestokRepository)

    init {
        height = "100%"
        width = "auto"
        isMargin = false
        isPadding = false
        style.set("margin-top", "0px")
        val filters = Filters(allShopsVirtualWineList)

        add(
            filters.apply {
                isMargin = false
                isPadding = false
                alignItems = FlexComponent.Alignment.CENTER
                justifyContentMode = FlexComponent.JustifyContentMode.AROUND
                setHorizontalComponentAlignment(FlexComponent.Alignment.CENTER, this)
            }
        )
        add(
            allShopsVirtualWineList.apply {
                isMargin = true
                style.set("padding-left", "20px")
                setHorizontalComponentAlignment(FlexComponent.Alignment.CENTER, this)
            }
        )
    }
}