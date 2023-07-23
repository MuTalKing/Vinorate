package ru.vinorate.app.web.components

import com.vaadin.flow.component.button.Button
import com.vaadin.flow.component.button.ButtonVariant
import com.vaadin.flow.component.icon.Icon
import com.vaadin.flow.component.icon.VaadinIcon

class FilterButton(filters: Filters): Button("Фильтры", Icon(VaadinIcon.FILTER)) {
    var visibleCondition = false

    init {
        this.addThemeVariants(ButtonVariant.LUMO_PRIMARY)
        this.addClickListener {
            visibleCondition = !visibleCondition
            filters.selectShop.isVisible = visibleCondition
            filters.filterName.isVisible = visibleCondition
            filters.minPrice.isVisible = visibleCondition
            filters.maxPrice.isVisible = visibleCondition
            filters.selectColor.isVisible = visibleCondition
            filters.sugarComboBox.isVisible = visibleCondition
        }
    }
}