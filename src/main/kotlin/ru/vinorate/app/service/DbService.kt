package ru.vinorate.app.service

import ru.vinorate.app.model.Shop

interface DbService {
    fun <T> saveWine(shop: Shop<T>)

    fun lastId(): Long

    fun lastName(): String?
}