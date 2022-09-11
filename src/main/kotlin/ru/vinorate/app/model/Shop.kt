package ru.vinorate.app.model

interface Shop<T> {
    var id: Long?
    var name: String?
    var rate: String?
    var price: String?
    var picture: String?
}