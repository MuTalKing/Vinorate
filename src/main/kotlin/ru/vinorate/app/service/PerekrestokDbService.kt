package ru.vinorate.app.service

import org.springframework.stereotype.Service
import ru.vinorate.app.model.Perekrestok
import ru.vinorate.app.model.Shop
import ru.vinorate.app.repository.PerekrestokRepository

@Service
class PerekrestokDbService(
    private val perekrestokRepository: PerekrestokRepository
): DbService {
    override fun <T> saveWine(shop: Shop<T>) {
        (shop as Perekrestok?)?.let { perekrestokRepository.save(it) }
    }

    override fun lastId() = perekrestokRepository.findTopByOrderByIdDesc()?.id ?: 0

    override fun lastName() = perekrestokRepository.findTopByOrderByIdDesc()?.name
}