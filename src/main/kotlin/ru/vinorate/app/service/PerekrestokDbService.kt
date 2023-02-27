package ru.vinorate.app.service

import org.springframework.stereotype.Service
import ru.vinorate.app.model.Perekrestok
import ru.vinorate.app.model.Shop
import ru.vinorate.app.repository.PerekrestokRepository

@Service
class PerekrestokDbService(
    private val perekrestokRepository: PerekrestokRepository
): DbService {
    override fun saveWine(shop: Shop) {
        (shop as Perekrestok?)?.let { perekrestokRepository.save(it) }
    }

    override fun lastId() = perekrestokRepository.findTopByOrderByIdDesc()?.id ?: 0

    override fun lastName() = perekrestokRepository.findTopByOrderByIdDesc()?.name

    override fun firstNameByRate(rate: String): String? = perekrestokRepository.findTopByRateOrderByIdAsc(rate)?.name

    override fun findByName(wineName: String): String? = perekrestokRepository.findByName(wineName)?.name

    override fun findNames(): List<String> = perekrestokRepository.findNames()

    override fun findPrices(): List<String> = perekrestokRepository.findPrices()

    override fun findPictures(): List<String> = perekrestokRepository.findPictures()

    override fun deleteAll() = perekrestokRepository.deleteAll()

    override fun updateRate(rate: String, name: String) = perekrestokRepository.updateRate(rate, name)
}