package ru.vinorate.app.model

import javax.persistence.Entity
import javax.persistence.Id
import javax.persistence.Table

@Entity
@Table(name = "vivino")
class Vivino {
    @Id
    var id: Long? = null
    var name: String? = null
    var rate: String? = null
}