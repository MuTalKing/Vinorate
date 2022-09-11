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
    override fun processPerekrestokWine(deleteAll: Boolean){
        if (deleteAll) perekrestokDbService.deleteAll()
        perekrestokService.prepare()
        val perekrestokWineNames = perekrestokService.getWineNames()
        val perekrestokWinePrices = perekrestokService.getWinePrices()
        val perekrestokWinePictures = perekrestokService.getWinePictures()
        vivinoService.getVivinoRateAndInsertIntoDb(
            wineNamesList = perekrestokWineNames,
            winePricesList = perekrestokWinePrices,
            winePicturesList = perekrestokWinePictures,
            shop = Perekrestok(),
            dbService = perekrestokDbService
        )
    }
}