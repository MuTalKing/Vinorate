package ru.vinorate.app.processor.impl

import org.springframework.stereotype.Service
import ru.vinorate.app.processor.ShopProcessor
import ru.vinorate.app.service.VivinoService
import ru.vinorate.app.service.impl.PerekrestokDbServiceImpl
import ru.vinorate.app.service.impl.PerekrestokServiceImpl

@Service
class PerekrestokProcessorImpl(
    private val perekrestokServiceImpl: PerekrestokServiceImpl,
    private val vivinoService: VivinoService,
    private val perekrestokDbServiceImpl: PerekrestokDbServiceImpl
) : ShopProcessor {

    override fun process(page: String, color: String, type: String) {
        perekrestokServiceImpl.prepare(page)
        val perekrestokWineNames = perekrestokServiceImpl.getWineNames(color)
        val perekrestokWinePrices = perekrestokServiceImpl.getWinePrices()
        val perekrestokWinePictures = perekrestokServiceImpl.getWinePictures()
        val perekrestokWineSugar = perekrestokServiceImpl.getWineSugar()
        for (wine in 1 until perekrestokWineNames.size) {
            perekrestokDbServiceImpl.insertIntoDb(
                wineName = perekrestokWineNames[wine - 1],
                rate = "",
                winePrice = perekrestokWinePrices[wine - 1],
                winePicture = perekrestokWinePictures[wine - 1],
                shopLogo = "https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png",
                color = type,
                sugar = perekrestokWineSugar[wine - 1]
            )
        }
    }

    override fun getVivinoRate() {
        val perekrestokWineNames = perekrestokDbServiceImpl.findNames()
        vivinoService.getVivinoRateAndInsertIntoDb(
            wineNamesList = perekrestokWineNames,
            dbService = perekrestokDbServiceImpl
        )
    }

    override fun truncateTable() {
        perekrestokDbServiceImpl.deleteAll()
    }
}