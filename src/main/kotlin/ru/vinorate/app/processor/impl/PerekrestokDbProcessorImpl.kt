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
    override fun processPerekrestokWine(){
        val perekrestokWineNames = perekrestokService.getWineNames()
        vivinoService.getVivinoRate(
            wineNamesList = perekrestokWineNames,
            shop = Perekrestok(),
            dbService = perekrestokDbService
        )
    }
}