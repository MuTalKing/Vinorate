package ru.vinorate.app.processor.impl

import org.springframework.stereotype.Service
import ru.vinorate.app.model.Perekrestok
import ru.vinorate.app.processor.PerekrestokDbProcessor
import ru.vinorate.app.service.PerekrestokDbService
import ru.vinorate.app.service.PerekrestokService
import ru.vinorate.app.service.VivinoService

@Service
class PerekrestokDbProcessorImpl(
    private val perekrestokService: PerekrestokService,
    private val vivinoService: VivinoService,
    private val perekrestokDbService: PerekrestokDbService
): PerekrestokDbProcessor {
    override fun getPerekrestokWineNames(page: String, color: String) {
        perekrestokService.prepare(page)
        val perekrestokWineNames = perekrestokService.getWineNames(color)
        val perekrestokWinePrices = perekrestokService.getWinePrices()
        val perekrestokWinePictures = perekrestokService.getWinePictures()
        val perekrestokWineSugar = perekrestokService.getWineSugar()
        for (wine in 1 until perekrestokWineNames.size) {
            vivinoService.insertIntoDB(
                wineName = perekrestokWineNames[wine - 1],
                rate = "",
                winePrice = perekrestokWinePrices[wine - 1],
                winePicture = perekrestokWinePictures[wine - 1],
                shop = Perekrestok(),
                dbService = perekrestokDbService,
                shopLogo = "https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png",
                color = color,
                sugar = perekrestokWineSugar[wine - 1]
            )
        }
    }

    override fun getPerekrestokWineNames(page: String, type: String, color: String) {
        perekrestokService.prepare(page)
        val perekrestokWineNames = perekrestokService.getWineNames(color)
        val perekrestokWinePrices = perekrestokService.getWinePrices()
        val perekrestokWinePictures = perekrestokService.getWinePictures()
        val perekrestokWineSugar = perekrestokService.getWineSugar()
        for (wine in 1 until perekrestokWineNames.size) {
            vivinoService.insertIntoDB(
                wineName = perekrestokWineNames[wine - 1],
                rate = "",
                winePrice = perekrestokWinePrices[wine - 1],
                winePicture = perekrestokWinePictures[wine - 1],
                shop = Perekrestok(),
                dbService = perekrestokDbService,
                shopLogo = "https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png",
                color = type,
                sugar = perekrestokWineSugar[wine - 1]
            )
        }
    }

    override fun getVivinoRate() {
        val perekrestokWineNames = perekrestokDbService.findNames()
        vivinoService.getVivinoRateAndInsertIntoDb(
            wineNamesList = perekrestokWineNames,
            dbService = perekrestokDbService
        )
    }

    override fun updatePerekrestokRedWines() {
        TODO("Not yet implemented")
    }

    override fun truncatePerekrestokTable() {
        perekrestokDbService.deleteAll()
    }
}