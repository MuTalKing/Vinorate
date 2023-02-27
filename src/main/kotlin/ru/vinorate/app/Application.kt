package ru.vinorate.app

import com.vaadin.flow.component.dependency.NpmPackage
import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication


@SpringBootApplication
@NpmPackage(value = "line-awesome", version = "1.3.0")
open class Application
fun main(args: Array<String>) {
    runApplication<Application>(*args)
}