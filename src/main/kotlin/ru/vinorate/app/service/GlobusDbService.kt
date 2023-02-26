package ru.vinorate.app.service

import org.springframework.stereotype.Service
import ru.vinorate.app.model.Globus
import ru.vinorate.app.model.Shop
import ru.vinorate.app.repository.GlobusRepository

@Service
class GlobusDbService(
private val globusRepository: GlobusRepository
): DbService {
    override fun <T> saveWine(shop: Shop<T>) {
        (shop as Globus?)?.let { globusRepository.save(it) }
    }

    override fun lastId() = globusRepository.findTopByOrderByIdDesc()?.id ?: 0

    override fun lastName() = globusRepository.findTopByOrderByIdDesc()?.name

    override fun firstNameByRate(rate: String): String? = globusRepository.findTopByRateOrderByIdAsc(rate)?.name

    override fun findByName(wineName: String) = globusRepository.findByName(wineName)?.name

    override fun findNames(): List<String> = globusRepository.findNames()

    override fun findPrices(): List<String> = globusRepository.findPrices()

    override fun findPictures(): List<String> = globusRepository.findPictures()

    override fun deleteAll() = globusRepository.deleteAll()

    override fun updateRate(rate: String, name: String) = globusRepository.updateRate(rate, name)
}