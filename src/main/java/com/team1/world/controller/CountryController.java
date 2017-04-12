package com.team1.world.controller;

import com.team1.domain.Country;
import com.team1.world.CountryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/country")
public class CountryController {

	private static final int ITEMS_PER_PAGE = 10;

	private final CountryService countryService;

	@Autowired
	public CountryController(CountryService countryService)
	{
		this.countryService = countryService;
	}

	@RequestMapping("/")
	public String rootPage()
	{
		return "redirect:/country/list/1";
	}

	@RequestMapping("/list")
	public String listPage()
	{
		return "redirect:/country/list/1";
	}

	@RequestMapping("/{param}")
	public String itemPage(@PathVariable String param, Model m)
	{
		Country c;
		if (param.length() > 3 ||
			null == (c = countryService.getByCode(param)))
			return "redirect:/country/list/1";

		m.addAttribute("data", c);
		return "/world/countryItem";
	}

	@RequestMapping("/list/{param}")
	public String listPage(@PathVariable String param, Model m)
	{
		if (!param.matches("^\\d{1,5}$"))
			return "redirect:/country/list/1";

		int pageNumber = Integer.parseInt(param);
		pageNumber = Math.max(0, pageNumber - 1);
		m.addAttribute("data", countryService.getCountries(new PageRequest(pageNumber, ITEMS_PER_PAGE)));
		return "/world/countryList";
	}
}
