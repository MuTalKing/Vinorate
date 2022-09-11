package ru.vinorate.app.processor

interface PerekrestokDbProcessor {
    fun processPerekrestokWine(deleteAll: Boolean = false)
}