package ru.vinorate.app.processor

interface PerekrestokDbProcessor {
    fun getPerekrestokWineNames(page: String, color: String)
    fun getPerekrestokWineNames(page: String, type: String, color: String)
    fun updatePerekrestokRedWines()
    fun truncatePerekrestokTable()
    fun getVivinoRate()
}