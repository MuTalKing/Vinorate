package ru.vinorate.app.service.impl

import org.springframework.stereotype.Service
import ru.vinorate.app.model.Perekrestok
import ru.vinorate.app.repository.PerekrestokRepository
import ru.vinorate.app.service.DbService

@Service
class PerekrestokDbServiceImpl(
    private val perekrestokRepository: PerekrestokRepository
) : DbService {

    override fun lastId() = perekrestokRepository.findTopByOrderByIdDesc()?.id ?: 0

    override fun firstNameByRate(rate: String): String? = perekrestokRepository.findTopByRateOrderByIdAsc(rate)?.name

    override fun findNames(): List<String> = perekrestokRepository.findNames()

    override fun deleteAll() = perekrestokRepository.deleteAll()

    override fun updateRate(rate: String, name: String) = perekrestokRepository.updateRate(rate, name)

    override fun insertIntoDb(
        wineName: String,
        rate: String,
        winePrice: String,
        winePicture: String,
        shopLogo: String,
        color: String,
        sugar: String
    ) {
        if (perekrestokRepository.findByName(wineName) == null) {
            perekrestokRepository.save(
                Perekrestok(
                    name = wineName,
                    rate = rate,
                    price = winePrice,
                    picture = winePicture,
                    shopLogo = shopLogo,
                    color = color,
                    sugar = sugar
                )
            )
        } else {
            perekrestokRepository.updateRate(rate, wineName)
        }
    }
}