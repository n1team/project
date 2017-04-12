package com.team1.repository;

import com.team1.domain.Country;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

public interface CountryRepository extends JpaRepository<Country, String> {

	@Modifying
	@Transactional
	@Query("delete from Country where code = ?1")
	void deleteByCode(String code);

}
