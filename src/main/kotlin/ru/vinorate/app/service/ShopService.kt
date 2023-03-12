package ru.vinorate.app.service

interface ShopService {
    fun prepare(page: String)
    fun preparePageWithRedWines()
    fun getWineNames(color: String): List<String>

    fun getWinePrices(): List<String>

    fun getWinePictures(): List<String>

    fun getWineSugar(): List<String>
}