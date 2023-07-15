package ru.vinorate.app.config

import org.springframework.boot.context.properties.ConfigurationProperties
import org.springframework.boot.context.properties.ConstructorBinding

@ConstructorBinding
@ConfigurationProperties(prefix = "vinorate")
data class VinorateProperties(
    val selenide: SelenideData
) {
    data class SelenideData(
        val url: String
    )
}
