package ru.vinorate.app.service

interface DbService {
    fun lastId(): Long

    fun firstNameByRate(rate: String): String?

    fun findNames(): List<String>

    fun deleteAll()

    fun updateRate(rate: String, name: String)

    fun insertIntoDb(
        wineName: String,
        rate: String,
        winePrice: String,
        winePicture: String,
        shopLogo: String,
        color: String,
        sugar: String
    )
}