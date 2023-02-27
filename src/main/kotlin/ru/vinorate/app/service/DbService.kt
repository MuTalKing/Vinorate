package ru.vinorate.app.service

import ru.vinorate.app.model.Shop

interface DbService {
    fun saveWine(shop: Shop)

    fun lastId(): Long

    fun lastName(): String?

    fun firstNameByRate(rate: String): String?

    fun findByName(wineName: String): String?

    fun findNames(): List<String>

    fun findPrices(): List<String>

    fun findPictures(): List<String>

    fun deleteAll()

    fun updateRate(rate: String, name: String)
}