package ru.vinorate.app.service

interface ShopService {
    fun prepare()
    fun getWineNames(): List<String>

    fun getWinePrices(): List<String>

    fun getWinePictures(): List<String>
}