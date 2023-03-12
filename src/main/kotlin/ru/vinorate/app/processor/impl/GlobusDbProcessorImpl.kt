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
        TODO("Not yet implemented")
    }

    override fun getGlobusWineNames(page: String, color: String) {
        globusService.prepare(page)
        val globusWineNames = mutableListOf<String>()
        val globusWinePrices = mutableListOf<String>()
        val globusWinePictures = mutableListOf<String>()
        val globusWineSugar = mutableListOf<String>()
        for (pageNumber in 1..globusService.pagesCount!!.toInt()) {
            globusService.scroll()
            globusService.getWineNames(color).forEach {
                globusWineNames.add(it.replace("столовое ", ""))
            }
            globusService.getWinePrices().forEach {
                globusWinePrices.add(it)
            }
            globusService.getWinePictures().forEach {
                globusWinePictures.add(it)
            }
            globusService.getWineSugar().forEach {
                globusWineSugar.add(it)
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
                dbService = globusDbService,
                shopLogo = "https://toplogos.ru/images/thumbs/preview-logo-globus.jpg",
                color = color,
                sugar = globusWineSugar[wine - 1]
            )
        }
    }

    override fun getVivinoRate() {
        val globusWineNames = globusDbService.findNames()
        vivinoService.getVivinoRateAndInsertIntoDb(
            wineNamesList = globusWineNames,
            dbService = globusDbService
        )
    }

    override fun updateGlobusRedWines() {
        TODO("Not yet implemented")
    }

    override fun truncateGlobusTable() {
        globusDbService.deleteAll()
    }
}