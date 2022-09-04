package ru.vinorate.app.service

import ru.vinorate.app.model.Perekrestok

interface DbService {
    fun saveWine(shop: Perekrestok)
}