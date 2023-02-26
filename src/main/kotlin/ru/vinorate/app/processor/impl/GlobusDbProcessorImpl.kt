package ru.vinorate.app.processor.impl

import org.springframework.stereotype.Service
import ru.vinorate.app.model.Globus
import ru.vinorate.app.processor.GlobusDbProcessor
import ru.vinorate.app.service.GlobusDbService
import ru.vinorate.app.service.GlobusService
import ru.vinorate.app.service.VivinoService

@Service
class GlobusDbProcessorImpl(
    private val globusService: GlobusService,
    private val vivinoService: VivinoService,
    private val globusDbService: GlobusDbService
): GlobusDbProcessor {
    override fun processGlobusWine(deleteAll: Boolean){
        var globusWineNames = globusDbService.findNames()
        var globusWinePrices = globusDbService.findPrices()
        var globusWinePictures = globusDbService.findPictures()
        if (deleteAll) {
            globusDbService.deleteAll()
            globusService.prepare()
            globusWineNames = mutableListOf()
            globusWinePrices = mutableListOf()
            globusWinePictures = mutableListOf()
            for (page in 1..globusService.pagesCount!!.toInt()) {
                globusService.scroll()
                globusService.getWineNames().forEach {
                    globusWineNames.add(it.replace("столовое ", ""))
                }
                globusService.getWinePrices().forEach {
                    globusWinePrices.add(it)
                }
                globusService.getWinePictures().forEach {
                    globusWinePictures.add(it)
                }
                globusService.nextPageButton.scrollIntoView(false).click()
            }
            for (wine in 1 until globusWineNames.size) {
                vivinoService.insertIntoDB(
                    wineName = globusWineNames[wine - 1],
                    rate = "",
                    winePrice = globusWinePrices[wine - 1],
                    winePicture = globusWinePictures[wine - 1],
                    shop = Globus(),
                    dbService = globusDbService
                )
            }
        }
        vivinoService.getVivinoRateAndInsertIntoDb(
            wineNamesList = globusWineNames,
            winePricesList = globusWinePrices,
            winePicturesList = globusWinePictures,
            shop = Globus(),
            dbService = globusDbService
        )
    }
}