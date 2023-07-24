package ru.vinorate.app.model

import ru.vinorate.app.dto.Wine
import javax.persistence.Entity
import javax.persistence.GeneratedValue
import javax.persistence.GenerationType
import javax.persistence.Id
import javax.persistence.Table

@Entity
@Table(name = "globus")
data class Globus(
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    var id: Long = 0,
    var name: String,
    var rate: String?,
    var price: String,
    var picture: String,
    var shopLogo: String,
    var color: String,
    var sugar: String
) {
    fun toWineDTO() = Wine(
        name = name,
        rate = rate.orEmpty(),
        price = price,
        picture = picture,
        shopLogo = shopLogo,
        color = color,
        sugar = sugar
    )
}