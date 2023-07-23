package ru.vinorate.app.controller

import org.springframework.http.HttpStatus
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.ResponseStatus
import org.springframework.web.bind.annotation.RestController
import ru.vinorate.app.processor.impl.GlobusDbProcessorImpl
import ru.vinorate.app.processor.impl.PerekrestokDbProcessorImpl

@RestController
class VinorateController(
    val perekrestokDbProcessorImpl: PerekrestokDbProcessorImpl,
    val globusDbProcessorImpl: GlobusDbProcessorImpl
) {
    @GetMapping("/createPerekrestokRedWines")
    @ResponseStatus(HttpStatus.OK)
    fun createPerekrestokRedWines() {
        perekrestokDbProcessorImpl.getPerekrestokWineNames(
            page = "https://www.perekrestok.ru/cat/c/2/vino?filter.tsvet-vina=krasnoe",
            color = "Красное"
        )
    }

    @GetMapping("/createPerekrestokWhiteWines")
    @ResponseStatus(HttpStatus.OK)
    fun createPerekrestokWhiteWines() {
        perekrestokDbProcessorImpl.getPerekrestokWineNames(
            page = "https://www.perekrestok.ru/cat/c/2/vino?filter.tsvet-vina=beloe",
            color = "Белое"
        )
    }

    @GetMapping("/createPerekrestokRoseWines")
    @ResponseStatus(HttpStatus.OK)
    fun createPerekrestokRoseWines() {
        perekrestokDbProcessorImpl.getPerekrestokWineNames(
            page = "https://www.perekrestok.ru/cat/c/2/vino?filter.tsvet-vina=rozovoe",
            color = "Розовое"
        )
    }

    @GetMapping("/createPerekrestokSparklingWhiteWines")
    @ResponseStatus(HttpStatus.OK)
    fun createPerekrestokSparklingWhiteWines() {
        perekrestokDbProcessorImpl.getPerekrestokWineNames(
            page = "https://www.perekrestok.ru/cat/c/3/igristye-vina",
            type = "Игристое",
            color = "Белое"
        )
    }

    @GetMapping("/createPerekrestokSparklingRoseWines")
    @ResponseStatus(HttpStatus.OK)
    fun createPerekrestokSparklingRoseWines() {
        perekrestokDbProcessorImpl.getPerekrestokWineNames(
            page = "https://www.perekrestok.ru/cat/c/3/igristye-vina",
            type = "Игристое",
            color = "Розовое"
        )
    }

    @GetMapping("/createPerekrestokWinesRate")
    @ResponseStatus(HttpStatus.OK)
    fun createPerekrestokWinesRate() {
        perekrestokDbProcessorImpl.getVivinoRate()
    }

    @GetMapping("/truncatePerekrestokWines")
    @ResponseStatus(HttpStatus.OK)
    fun truncatePerekrestokWines() {
        perekrestokDbProcessorImpl.truncatePerekrestokTable()
    }

    @GetMapping("/createGlobusRedWines")
    @ResponseStatus(HttpStatus.OK)
    fun createGlobusRedWines() {
        globusDbProcessorImpl.getGlobusWineNames(
            page = "https://online.globus.ru/catalog/alkogol/vino/krasnoe-vino/",
            color = "Красное"
        )
    }

    @GetMapping("/createGlobusWhiteWines")
    @ResponseStatus(HttpStatus.OK)
    fun createGlobusWhiteWines() {
        globusDbProcessorImpl.getGlobusWineNames(
            page = "https://online.globus.ru/catalog/alkogol/vino/beloe-vino/",
            color = "Белое"
        )
    }

    @GetMapping("/createGlobusRoseWines")
    @ResponseStatus(HttpStatus.OK)
    fun createGlobusRoseWines() {
        globusDbProcessorImpl.getGlobusWineNames(
            page = "https://online.globus.ru/catalog/alkogol/vino/rozovoe-i-fruktovoe-vino/filter/atr_ru_sugar_contetnt-is-190796-or-190795-or-190797-or-190794/apply/",
            color = "Розовое"
        )
    }

    @GetMapping("/createGlobusSparklingRoseWines")
    @ResponseStatus(HttpStatus.OK)
    fun createGlobusSparklingRoseWines() {
        globusDbProcessorImpl.getGlobusWineNames(
            page = "https://online.globus.ru/catalog/alkogol/shampanskoe-i-igristoe/filter/atr_ru_wine_type-is-190789/apply/",
            color = "Розовое",
            type = "Игристое"
        )
    }

    @GetMapping("/createGlobusSparklingWhiteWines")
    @ResponseStatus(HttpStatus.OK)
    fun createGlobusSparklingWhiteWines() {
        globusDbProcessorImpl.getGlobusWineNames(
            page = "https://online.globus.ru/catalog/alkogol/shampanskoe-i-igristoe/filter/atr_ru_wine_type-is-190787/apply/",
            color = "Белое",
            type = "Игристое"
        )
    }

    @GetMapping("/createGlobusWinesRate")
    @ResponseStatus(HttpStatus.OK)
    fun createGlobusWinesRate() {
        globusDbProcessorImpl.getVivinoRate()
    }

    @GetMapping("/truncateAndCreateGlobusWines")
    @ResponseStatus(HttpStatus.OK)
    fun truncateAndCreateGlobusWines() {
        globusDbProcessorImpl.processGlobusWine(true)
    }

    @GetMapping("/truncateGlobusWines")
    @ResponseStatus(HttpStatus.OK)
    fun truncateGlobusWines() {
        globusDbProcessorImpl.truncateGlobusTable()
    }

}