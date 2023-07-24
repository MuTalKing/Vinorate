package ru.vinorate.app.service

import org.springframework.stereotype.Service
import ru.vinorate.app.model.Vivino
import ru.vinorate.app.repository.VivinoRepository

@Service
class VivinoDbService(
    private val vivinoRepository: VivinoRepository
) {
    fun findRateByName(wineName: String): String? = vivinoRepository.findRateByName(wineName)?.rate

    fun saveWine(vivino: Vivino) {
        vivinoRepository.save(vivino)
    }

    fun lastId() = vivinoRepository.findTopByOrderByIdDesc()?.id ?: 0

    fun insertIntoDb(
        wineName: String,
        rate: String
    ) {
        if (findRateByName(wineName) == null) {
            saveWine(
                Vivino(
                    id = lastId() + 1,
                    name = wineName,
                    rate = rate
                )
            )
        }
    }
}