package ru.vinorate.app.repository

import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.stereotype.Repository
import ru.vinorate.app.model.Vivino

@Repository
interface VivinoRepository: JpaRepository<Vivino, Long> {
    fun findRateByName(name: String): Vivino?

    fun findTopByOrderByIdDesc(): Vivino?
}