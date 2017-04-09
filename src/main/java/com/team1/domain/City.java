package com.team1.domain;

import com.team1.util.ToString;

import java.math.BigDecimal;

@SuppressWarnings("unused")
public class City extends ToString {

	private int id;
	private String name;
	private String countryCode;
	private String district;
	private BigDecimal population;
	private Country country;
	
	public Country getCountry() {
		return country;
	}

	public void setCountry(Country country) {
		this.country = country;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		
		if(name !=null){
			 name = name.trim();
		}
		this.name = name;
	}

	public String getCountryCode() {
		return countryCode;
	}

	public void setCountryCode(String countryCode) {
		
		if(countryCode != null){
			countryCode = countryCode.trim();
		}		
		this.countryCode = countryCode;
	}

	public String getDistrict() {
		return district;
	}

	public void setDistrict(String district) {
		
		if(district !=null){
			district = district.trim();
		}
		this.district = district;
	}

	public BigDecimal getPopulation() {
		return population;
	}

	public void setPopulation(BigDecimal population) {
		this.population = population;
	}

	
}
