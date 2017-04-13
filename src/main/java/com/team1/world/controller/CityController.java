package com.team1.world.controller;

import com.team1.domain.City;
import com.team1.domain.Country;
import com.team1.world.CityService;
import com.team1.world.CountryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.MultiValueMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

@Controller
@RequestMapping("/city")
public class CityController {

	private static final int ITEMS_PER_PAGE = 10;

	private final CityService cityService;
	private final CountryService countryService;

	@Autowired
	public CityController(CityService cityService, CountryService countryService)
	{
		this.cityService = cityService;
		this.countryService = countryService;
	}

	@RequestMapping("/")
	public String rootPage()
	{
		return "redirect:/city/list/1";
	}

	@RequestMapping("/list")
	public String listPage()
	{
		return "redirect:/city/list/1";
	}

	@RequestMapping("/list/{param}")
	public String listPage(@PathVariable String param, Model m)
	{
		if (!param.matches("^\\d{1,5}$"))
			return "redirect:/city/list/1";

		int pageNumber = Integer.parseInt(param);
		pageNumber = Math.max(0, pageNumber - 1);
		Page<City> page = cityService.getCities(new PageRequest(pageNumber, ITEMS_PER_PAGE));
		m.addAttribute("data", page);
		page.getContent().forEach(d -> m.addAttribute("city" + d.getId(), new City()));
		m.addAttribute("cityNew", new City());
		return "/world/cityList";
	}

	@PostMapping("/insert")
	public String insertDept(@Valid City city,
	                         BindingResult errors,
	                         HttpServletRequest req,
	                         @RequestBody MultiValueMap<String,String> formData)
	{
		Country c = countryService.getByCode(formData.getFirst("cntCode"));
		city.setCountry(c);
		cityService.insert(city, errors);
		return String.format("redirect:%s", req.getHeader("referer"));
	}

	@PostMapping("/update")
	public String updateEmp(@Valid City city,
	                        BindingResult errors,
	                        HttpServletRequest req,
	                        @RequestBody MultiValueMap<String,String> formData)
	{
		if (formData.getFirst("submit").equals("Delete"))
		{
			City c = cityService.getById(city.getId());
			if (c == null)
				return "redirect:/city/list/1";
			cityService.delete(c, errors);
		}
		else
		{
			Country country = countryService.getByCode(formData.getFirst("cntCode"));
			city.setCountry(country);
			cityService.update(city, errors);
		}
		return String.format("redirect:%s", req.getHeader("referer"));
	}

}
