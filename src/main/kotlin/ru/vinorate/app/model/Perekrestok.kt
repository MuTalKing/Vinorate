package ru.vinorate.app.model

import javax.persistence.Entity
import javax.persistence.Id
import javax.persistence.Table

@Entity
@Table(name = "perekrestok")
class Perekrestok: Shop {
    @Id
    override var id: Long? = null
    override var name: String? = null
    override var rate: String? = null
    override var price: String? = null
    override var picture: String? = null
}