package com.team1.world;

import com.team1.domain.Country;
import com.team1.repository.CountryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

@Service
public class CountryService {

	private final CountryRepository countryRepository;

	@Autowired
	public CountryService(CountryRepository countryRepository)
	{
		this.countryRepository = countryRepository;
	}

	public Page<Country> getCountries(PageRequest page)
	{
		return countryRepository.findAll(page);
	}

	public Country getByCode(String code)
	{
		return countryRepository.findOne(code);
	}

}
