package ru.vinorate.app.service.impl

import org.springframework.stereotype.Service
import ru.vinorate.app.model.Globus
import ru.vinorate.app.repository.GlobusRepository
import ru.vinorate.app.service.DbService

@Service
class GlobusDbServiceImpl(
    private val globusRepository: GlobusRepository
) : DbService {
    override fun lastId() = globusRepository.findTopByOrderByIdDesc()?.id ?: 0

    override fun firstNameByRate(rate: String): String? = globusRepository.findTopByRateOrderByIdAsc(rate)?.name

    override fun findNames(): List<String> = globusRepository.findNames()

    override fun deleteAll() = globusRepository.deleteAll()

    override fun updateRate(rate: String, name: String) = globusRepository.updateRate(rate, name)

    override fun insertIntoDb(
        wineName: String,
        rate: String,
        winePrice: String,
        winePicture: String,
        shopLogo: String,
        color: String,
        sugar: String
    ) {
        if (globusRepository.findByName(wineName) == null) {
            globusRepository.save(
                Globus(
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
            globusRepository.updateRate(rate, wineName)
        }
    }
}