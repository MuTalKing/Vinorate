package ru.vinorate.app.controller

import org.springframework.stereotype.Controller
import org.springframework.web.bind.annotation.GetMapping
import ru.vinorate.app.processor.impl.PerekrestokDbProcessorImpl

@Controller
class VinorateController(
    val perekrestokDbProcessorImpl: PerekrestokDbProcessorImpl
) {
    @GetMapping("/createPerekrestokWines")
    fun createPerekrestokWines() {
        perekrestokDbProcessorImpl.processPerekrestokWine()
    }


}