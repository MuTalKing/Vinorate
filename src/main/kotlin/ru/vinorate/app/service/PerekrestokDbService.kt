package ru.vinorate.app.service

import org.springframework.stereotype.Service
import ru.vinorate.app.model.Perekrestok
import ru.vinorate.app.model.Shop
import ru.vinorate.app.repository.PerekrestokRepository

@Service
class PerekrestokDbService(
    private val perekrestokRepository: PerekrestokRepository
): DbService {
    override fun saveWine(perekrestokWine: Perekrestok) {
        perekrestokRepository.save(perekrestokWine)
    }
}