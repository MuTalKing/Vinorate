package ru.vinorate.app.web

import com.vaadin.flow.component.dependency.CssImport
import com.vaadin.flow.component.dependency.JsModule
import com.vaadin.flow.component.page.AppShellConfigurator
import com.vaadin.flow.router.PageTitle
import com.vaadin.flow.server.PWA
import com.vaadin.flow.theme.Theme
import com.vaadin.flow.theme.lumo.Lumo.LIGHT

@PageTitle("Vinorate")
@PWA(name = "Vinorate", shortName = "vinorate", iconPath = "icons/vinorate-16x16.png")
@Theme(variant = LIGHT, value = "lumo")
@JsModule("@vaadin/vaadin-lumo-styles/badge.js")
@CssImport(value = "./styles/empty.css", include = "lumo-badge")
class AppShell : AppShellConfigurator