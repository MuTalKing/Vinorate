package ru.vinorate.app.web.views;

import com.vaadin.flow.component.Tag;
import com.vaadin.flow.component.dependency.JsModule;
import com.vaadin.flow.component.polymertemplate.PolymerTemplate;
import com.vaadin.flow.templatemodel.TemplateModel;

/**
 * A Designer generated component for the vinorate-view template.
 *
 * Designer will add and remove fields with @Id mappings but
 * does not overwrite or otherwise change this file.
 */
@Tag("vinorate-view")
@JsModule("./themes/vinorate-view.js")
public class VinorateView extends PolymerTemplate<VinorateView.VinorateViewModel> {

    /**
     * Creates a new VinorateView.
     */
    public VinorateView() {
        // You can initialise any data required for the connected UI components here.
    }

    /**
     * This model binds properties between VinorateView and vinorate-view
     */
    public interface VinorateViewModel extends TemplateModel {
        // Add setters and getters for template properties here.
    }
}
