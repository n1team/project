package com.team1.repository;

import com.team1.domain.City;
import com.team1.domain.Country;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

public interface CityRepository extends JpaRepository<City, Integer> {

	Page<City> findCitiesByCountryOrderByName(Country country, Pageable page);

	long count();

	@Modifying
	@Transactional
	@Query("delete from City where id = ?1")
	void deleteById(int id);

}
