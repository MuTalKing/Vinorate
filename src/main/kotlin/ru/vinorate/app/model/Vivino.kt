package ru.vinorate.app.model

import javax.persistence.Entity
import javax.persistence.Id
import javax.persistence.Table

@Entity
@Table(name = "vivino")
data class Vivino(
    @Id
    var id: Long,
    var name: String,
    var rate: String,
)