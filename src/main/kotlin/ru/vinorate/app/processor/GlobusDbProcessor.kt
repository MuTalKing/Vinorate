package ru.vinorate.app.processor

interface GlobusDbProcessor {
    fun processGlobusWine(deleteAll: Boolean = false)
}