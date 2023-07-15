package ru.vinorate.app.config

import org.springframework.boot.context.properties.ConfigurationPropertiesScan
import org.springframework.context.annotation.Bean
import org.springframework.context.annotation.Configuration
import ru.vinorate.app.utils.browser.BrowserConfiguration

@ConfigurationPropertiesScan
@Configuration
class AppConfig {

    @Bean
    fun browserConfiguration(vinorateProperties: VinorateProperties) = BrowserConfiguration(vinorateProperties)

}