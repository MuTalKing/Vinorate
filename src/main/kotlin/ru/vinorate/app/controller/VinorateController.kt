package ru.vinorate.app.controller

import org.springframework.http.HttpStatus
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.ResponseStatus
import org.springframework.web.bind.annotation.RestController
import ru.vinorate.app.processor.impl.GlobusProcessorImpl
import ru.vinorate.app.processor.impl.PerekrestokProcessorImpl

@RestController
class VinorateController(
    val perekrestokProcessorImpl: PerekrestokProcessorImpl,
    val globusProcessorImpl: GlobusProcessorImpl
) {
    @GetMapping("/createPerekrestokRedWines")
    @ResponseStatus(HttpStatus.OK)
    fun createPerekrestokRedWines() {
        perekrestokProcessorImpl.process(
            page = "https://www.perekrestok.ru/cat/c/2/vino?filter.tsvet-vina=krasnoe",
            color = "Красное"
        )
    }

    @GetMapping("/createPerekrestokWhiteWines")
    @ResponseStatus(HttpStatus.OK)
    fun createPerekrestokWhiteWines() {
        perekrestokProcessorImpl.process(
            page = "https://www.perekrestok.ru/cat/c/2/vino?filter.tsvet-vina=beloe",
            color = "Белое"
        )
    }

    @GetMapping("/createPerekrestokRoseWines")
    @ResponseStatus(HttpStatus.OK)
    fun createPerekrestokRoseWines() {
        perekrestokProcessorImpl.process(
            page = "https://www.perekrestok.ru/cat/c/2/vino?filter.tsvet-vina=rozovoe",
            color = "Розовое"
        )
    }

    @GetMapping("/createPerekrestokSparklingWhiteWines")
    @ResponseStatus(HttpStatus.OK)
    fun createPerekrestokSparklingWhiteWines() {
        perekrestokProcessorImpl.process(
            page = "https://www.perekrestok.ru/cat/c/3/igristye-vina",
            type = "Игристое",
            color = "Белое"
        )
    }

    @GetMapping("/createPerekrestokSparklingRoseWines")
    @ResponseStatus(HttpStatus.OK)
    fun createPerekrestokSparklingRoseWines() {
        perekrestokProcessorImpl.process(
            page = "https://www.perekrestok.ru/cat/c/3/igristye-vina",
            type = "Игристое",
            color = "Розовое"
        )
    }

    @GetMapping("/createPerekrestokWinesRate")
    @ResponseStatus(HttpStatus.OK)
    fun createPerekrestokWinesRate() {
        perekrestokProcessorImpl.getVivinoRate()
    }

    @GetMapping("/truncatePerekrestokWines")
    @ResponseStatus(HttpStatus.OK)
    fun truncatePerekrestokWines() {
        perekrestokProcessorImpl.truncateTable()
    }

    @GetMapping("/createGlobusRedWines")
    @ResponseStatus(HttpStatus.OK)
    fun createGlobusRedWines() {
        globusProcessorImpl.process(
            page = "https://online.globus.ru/catalog/alkogol/vino/krasnoe-vino/",
            color = "Красное"
        )
    }

    @GetMapping("/createGlobusWhiteWines")
    @ResponseStatus(HttpStatus.OK)
    fun createGlobusWhiteWines() {
        globusProcessorImpl.process(
            page = "https://online.globus.ru/catalog/alkogol/vino/beloe-vino/",
            color = "Белое"
        )
    }

    @GetMapping("/createGlobusRoseWines")
    @ResponseStatus(HttpStatus.OK)
    fun createGlobusRoseWines() {
        globusProcessorImpl.process(
            page = "https://online.globus.ru/catalog/alkogol/vino/rozovoe-i-fruktovoe-vino/filter/atr_ru_sugar_contetnt-is-190796-or-190795-or-190797-or-190794/apply/",
            color = "Розовое"
        )
    }

    @GetMapping("/createGlobusSparklingRoseWines")
    @ResponseStatus(HttpStatus.OK)
    fun createGlobusSparklingRoseWines() {
        globusProcessorImpl.process(
            page = "https://online.globus.ru/catalog/alkogol/shampanskoe-i-igristoe/filter/atr_ru_wine_type-is-190789/apply/",
            color = "Розовое",
            type = "Игристое"
        )
    }

    @GetMapping("/createGlobusSparklingWhiteWines")
    @ResponseStatus(HttpStatus.OK)
    fun createGlobusSparklingWhiteWines() {
        globusProcessorImpl.process(
            page = "https://online.globus.ru/catalog/alkogol/shampanskoe-i-igristoe/filter/atr_ru_wine_type-is-190787/apply/",
            color = "Белое",
            type = "Игристое"
        )
    }

    @GetMapping("/createGlobusWinesRate")
    @ResponseStatus(HttpStatus.OK)
    fun createGlobusWinesRate() {
        globusProcessorImpl.getVivinoRate()
    }

//    @GetMapping("/truncateAndCreateGlobusWines")
//    @ResponseStatus(HttpStatus.OK)
//    fun truncateAndCreateGlobusWines() {
//        globusProcessorImpl.processGlobusWine(true)
//    }

    @GetMapping("/truncateGlobusWines")
    @ResponseStatus(HttpStatus.OK)
    fun truncateGlobusWines() {
        globusProcessorImpl.truncateTable()
    }

}