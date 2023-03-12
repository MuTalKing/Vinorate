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
    @GetMapping("/createPerekrestokRedWines")
    fun createPerekrestokRedWines() {
        perekrestokDbProcessorImpl.getPerekrestokWineNames(
            page = "https://www.perekrestok.ru/cat/c/2/vino?filter.tsvet-vina=krasnoe",
            color = "Красное"
        )
    }

    @GetMapping("/createPerekrestokWhiteWines")
    fun createPerekrestokWhiteWines() {
        perekrestokDbProcessorImpl.getPerekrestokWineNames(
            page = "https://www.perekrestok.ru/cat/c/2/vino?filter.tsvet-vina=beloe",
            color = "Белое"
        )
    }

    @GetMapping("/createPerekrestokRoseWines")
    fun createPerekrestokRoseWines() {
        perekrestokDbProcessorImpl.getPerekrestokWineNames(
            page = "https://www.perekrestok.ru/cat/c/2/vino?filter.tsvet-vina=rozovoe",
            color = "Розовое"
        )
    }

    @GetMapping("/createPerekrestokSparklingWhiteWines")
    fun createPerekrestokSparklingWhiteWines() {
        perekrestokDbProcessorImpl.getPerekrestokWineNames(
            page = "https://www.perekrestok.ru/cat/c/3/igristye-vina",
            type = "Игристое",
            color = "Белое"
        )
    }

    @GetMapping("/createPerekrestokSparklingRoseWines")
    fun createPerekrestokSparklingRoseWines() {
        perekrestokDbProcessorImpl.getPerekrestokWineNames(
            page = "https://www.perekrestok.ru/cat/c/3/igristye-vina",
            type = "Игристое",
            color = "Розовое"
        )
    }

    @GetMapping("/createPerekrestokWinesRate")
    fun createPerekrestokWinesRate() {
        perekrestokDbProcessorImpl.getVivinoRate()
    }

    @GetMapping("/truncatePerekrestokWines")
    fun truncatePerekrestokWines() {
        perekrestokDbProcessorImpl.truncatePerekrestokTable()
    }

    @GetMapping("/createGlobusRedWines")
    fun createGlobusRedWines() {
        globusDbProcessorImpl.getGlobusWineNames(
            page = "https://online.globus.ru/catalog/alkogol/vino/krasnoe-vino/",
            color = "Красное"
        )
    }

    @GetMapping("/createGlobusRedWinesRate")
    fun createGlobusRedWinesRate() {
        globusDbProcessorImpl.getVivinoRate()
    }

    @GetMapping("/truncateAndCreateGlobusWines")
    fun truncateAndCreateGlobusWines() {
        globusDbProcessorImpl.processGlobusWine(true)
    }

    @GetMapping("/truncateGlobusWines")
    fun truncateGlobusWines() {
        globusDbProcessorImpl.truncateGlobusTable()
    }

}