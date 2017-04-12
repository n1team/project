package com.team1.domain;

import com.team1.util.ToString;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.math.BigDecimal;

@Entity
public class City extends ToString {

	@Id
	@Column(length = 11)
	private int id;

	@NotNull
	@Column(length = 35)
	private String name;

	@Column(length = 20)
	private String district;

	@Column(length = 11)
	private BigDecimal population;

	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "country_code", referencedColumnName = "code", foreignKey = @ForeignKey(name = "FK_COUNTRY"))
	private Country country;

	public City()
	{
	}

	public City(int id, String name, String district, BigDecimal population, Country country)
	{
		this.id = id;
		this.name = name;
		this.district = district;
		this.population = population;
		this.country = country;
	}

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
