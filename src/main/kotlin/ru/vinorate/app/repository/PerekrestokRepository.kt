package ru.vinorate.app.repository

import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.data.jpa.repository.Modifying
import org.springframework.data.jpa.repository.Query
import org.springframework.data.repository.query.Param
import org.springframework.stereotype.Repository
import org.springframework.transaction.annotation.Transactional
import ru.vinorate.app.model.Perekrestok

@Repository
interface PerekrestokRepository: JpaRepository<Perekrestok, Long> {
    fun findTopByOrderByIdDesc(): Perekrestok?

    fun findTopByRateOrderByIdAsc(rate: String): Perekrestok?

    fun findByOrderByRateDesc(): Set<Perekrestok?>

    fun findByName(name: String): Perekrestok?

    @Query("SELECT p.name FROM Perekrestok p")
    fun findNames(): List<String>

    @Query("SELECT p.price FROM Perekrestok p")
    fun findPrices(): List<String>

    @Query("SELECT p.picture FROM Perekrestok p")
    fun findPictures(): List<String>

    @Transactional
    @Modifying(clearAutomatically = true)
    @Query("update Perekrestok p set p.rate =:rate where p.name =:name")
    fun updateRate(@Param("rate") rate: String, @Param("name") name: String)

//    @Query("select p from Perekrestok p where lower(p.name) like lower('%', :name, '%') union select g from Globus g where lower(g.name) like lower('%', :name, '%')")
//    fun search(@Param("name") name: String): Set<Shop?>
}