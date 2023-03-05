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
        var perekrestokWineNames = perekrestokDbService.findNames()
        var perekrestokWinePrices = perekrestokDbService.findPrices()
        var perekrestokWinePictures = perekrestokDbService.findPictures()
        if (deleteAll) {
            perekrestokDbService.deleteAll()
            perekrestokService.prepare()
            perekrestokWineNames = perekrestokService.getWineNames()
            perekrestokWinePrices = perekrestokService.getWinePrices()
            perekrestokWinePictures = perekrestokService.getWinePictures()
            for (wine in 1 until perekrestokWineNames.size) {
                vivinoService.insertIntoDB(
                    wineName = perekrestokWineNames[wine - 1],
                    rate = "",
                    winePrice = perekrestokWinePrices[wine - 1],
                    winePicture = perekrestokWinePictures[wine - 1],
                    shop = Perekrestok(),
                    dbService = perekrestokDbService,
                    shopLogo = "https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png"
                )
            }
        }
        vivinoService.getVivinoRateAndInsertIntoDb(
            wineNamesList = perekrestokWineNames,
            winePricesList = perekrestokWinePrices,
            winePicturesList = perekrestokWinePictures,
            shop = Perekrestok(),
            dbService = perekrestokDbService,
            shopLogo = "https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png"
        )
    }
}