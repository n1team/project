package com.team1.world;

import com.team1.domain.City;
import com.team1.repository.CityRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

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

	public City getById(int id)
	{
		return cityRepository.findOne(id);
	}

	public void insert(City city, BindingResult errors)
	{
		if (cityRepository.findOne(city.getId()) != null)
		{
			errors.reject("InvalidInsertRequest", "레코드가 이미 존재합니다.");
			return;
		}
		cityRepository.save(city);
	}

	public void update(City city, BindingResult errors)
	{
		if (cityRepository.findOne(city.getId()) == null)
		{
			errors.reject("InvalidUpdateRequest", "레코드가 존재하지 않습니다.");
			return;
		}
		cityRepository.save(city);
	}

	public void delete(City city, BindingResult errors)
	{
		city = cityRepository.findOne(city.getId());
		if (city == null)
		{
			errors.reject("InvalidUpdateRequest", "레코드가 존재하지 않습니다.");
			return;
		}
		cityRepository.deleteById(city.getId());
	}

}
