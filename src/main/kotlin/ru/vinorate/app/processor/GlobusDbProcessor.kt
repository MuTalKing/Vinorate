package ru.vinorate.app.processor

interface GlobusDbProcessor {
    fun processGlobusWine(deleteAll: Boolean = false)
    fun updateGlobusRedWines()
    fun truncateGlobusTable()
    fun getGlobusWineNames(page: String, color: String)
    fun getVivinoRate()
}