package ru.vinorate.app.processor

interface ShopProcessor {
    fun process(page: String, color: String, type: String = color)

    fun getVivinoRate()

    fun truncateTable()
}