package ru.vinorate.app.repository

import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.data.jpa.repository.Modifying
import org.springframework.data.jpa.repository.Query
import org.springframework.data.repository.query.Param
import org.springframework.stereotype.Repository
import org.springframework.transaction.annotation.Transactional
import ru.vinorate.app.model.Globus

@Repository
interface GlobusRepository : JpaRepository<Globus, Long> {
    fun findTopByOrderByIdDesc(): Globus?

    fun findTopByRateOrderByIdAsc(rate: String): Globus?

    fun findByOrderByRateDesc(): Set<Globus>

    fun findByName(name: String): Globus?

    @Query("SELECT g.name FROM Globus g")
    fun findNames(): List<String>

    @Transactional
    @Modifying(clearAutomatically = true)
    @Query("update Globus g set g.rate =:rate where g.name =:name")
    fun updateRate(@Param("rate") rate: String, @Param("name") name: String)

    @Transactional(readOnly = true)
    @Query("select * from Globus g where lower(g.name) like lower(CONCAT('%', :name, '%'))", nativeQuery = true)
    fun searchGlobusWinesByName(@Param("name") name: String): Set<Globus>
}