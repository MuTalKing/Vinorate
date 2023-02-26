package ru.vinorate.app.controller

import org.springframework.stereotype.Controller
import org.springframework.web.bind.annotation.GetMapping
import ru.vinorate.app.processor.impl.GlobusDbProcessorImpl
import ru.vinorate.app.processor.impl.PerekrestokDbProcessorImpl

@Controller
class VinorateController(
    val perekrestokDbProcessorImpl: PerekrestokDbProcessorImpl,
    val globusDbProcessorImpl: GlobusDbProcessorImpl
) {
    @GetMapping("/createPerekrestokWines")
    fun createPerekrestokWines() {
        perekrestokDbProcessorImpl.processPerekrestokWine()
    }

    @GetMapping("/truncateAndCreatePerekrestokWines")
    fun truncateAndCreatePerekrestokWines() {
        perekrestokDbProcessorImpl.processPerekrestokWine(true)
    }

    @GetMapping("/createGlobusWines")
    fun createGlobusWines() {
        globusDbProcessorImpl.processGlobusWine()
    }

    @GetMapping("/truncateAndCreateGlobusWines")
    fun truncateAndCreateGlobusWines() {
        globusDbProcessorImpl.processGlobusWine(true)
    }

}