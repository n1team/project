package com.team1.world;

import com.team1.domain.City;
import com.team1.repository.CityRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

@Service
public class CityService {

	private final CityRepository cityRepository;

	@Autowired
	public CityService(CityRepository cityRepository)
	{
		this.cityRepository = cityRepository;
	}

	public Page<City> getCities(PageRequest page)
	{
		return cityRepository.findAll(page);
	}

}
