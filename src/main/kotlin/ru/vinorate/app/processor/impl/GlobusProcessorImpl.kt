package ru.vinorate.app.processor.impl

import org.springframework.stereotype.Service
import ru.vinorate.app.processor.ShopProcessor
import ru.vinorate.app.service.VivinoService
import ru.vinorate.app.service.impl.GlobusDbServiceImpl
import ru.vinorate.app.service.impl.GlobusServiceImpl

@Service
class GlobusProcessorImpl(
    private val globusService: GlobusServiceImpl,
    private val vivinoService: VivinoService,
    private val globusDbServiceImpl: GlobusDbServiceImpl
) : ShopProcessor {

    override fun process(page: String, color: String, type: String) {
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
            if (pageNumber < globusService.pagesCount!!.toInt()) {
                globusService.nextPageButton.scrollIntoView(false).click()
            }
        }
        for (wine in 1 until globusWineNames.size) {
            globusDbServiceImpl.insertIntoDb(
                wineName = globusWineNames[wine - 1],
                rate = "",
                winePrice = globusWinePrices[wine - 1],
                winePicture = globusWinePictures[wine - 1],
                shopLogo = "https://toplogos.ru/images/thumbs/preview-logo-globus.jpg",
                color = type,
                sugar = globusWineSugar[wine - 1]
            )
        }
    }

    override fun getVivinoRate() {
        val globusWineNames = globusDbServiceImpl.findNames()
        vivinoService.getVivinoRateAndInsertIntoDb(
            wineNamesList = globusWineNames,
            dbService = globusDbServiceImpl
        )
    }

    override fun truncateTable() {
        globusDbServiceImpl.deleteAll()
    }
}