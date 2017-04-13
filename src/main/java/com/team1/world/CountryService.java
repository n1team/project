package com.team1.world;

import com.team1.domain.Country;
import com.team1.repository.CountryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

@Service
public class CountryService {

	private final CountryRepository countryRepository;

	@Autowired
	public CountryService(CountryRepository countryRepository)
	{
		this.countryRepository = countryRepository;
	}

	public long getTotalCount()
	{
		return 0;
	}

	public Page<Country> getCountries(PageRequest page)
	{
		return countryRepository.findAll(page);
	}

	public Country getByCode(String code)
	{
		return countryRepository.findOne(code);
	}

	public Country getByName(String name)
	{
		return countryRepository.findCountryByNameIs(name);
	}

	public void insert(Country country, BindingResult errors)
	{
		if (countryRepository.findOne(country.getCode()) != null)
		{
			errors.reject("InvalidInsertRequest", "레코드가 이미 존재합니다.");
			return;
		}
		countryRepository.save(country);
	}

	public void update(Country country, BindingResult errors)
	{
		if (countryRepository.findOne(country.getCode()) == null)
		{
			errors.reject("InvalidUpdateRequest", "레코드가 존재하지 않습니다.");
			return;
		}
		countryRepository.save(country);
	}

	public void delete(Country country, BindingResult errors)
	{
		country = countryRepository.findOne(country.getCode());
		if (country == null)
		{
			errors.reject("InvalidUpdateRequest", "레코드가 존재하지 않습니다.");
			return;
		}
		countryRepository.delete(country);
	}
}
