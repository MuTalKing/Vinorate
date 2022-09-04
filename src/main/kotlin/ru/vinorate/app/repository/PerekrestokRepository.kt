package ru.vinorate.app.repository

import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.stereotype.Repository
import ru.vinorate.app.model.Perekrestok

@Repository
interface PerekrestokRepository: JpaRepository<Perekrestok, Long> {
}