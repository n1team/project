package com.team1.world.controller;

import com.team1.domain.Country;
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
		Page<Country> page = countryService.getCountries(new PageRequest(pageNumber, ITEMS_PER_PAGE));
		m.addAttribute("data", page);
		m.addAttribute("cntNew", new Country());
		return "/world/countryList";
	}

	@PostMapping("/insert")
	public String insertDept(@Valid Country country,
	                         BindingResult errors,
	                         HttpServletRequest req)
	{
		countryService.insert(country, errors);
		return String.format("redirect:%s", req.getHeader("referer"));
	}

	@PostMapping("/update")
	public String updateEmp(@Valid Country country,
	                        BindingResult errors,
	                        HttpServletRequest req,
	                        @RequestBody MultiValueMap<String,String> formData)
	{
		if (formData.getFirst("submit").equals("Delete"))
		{
			Country c = countryService.getByCode(country.getCode());
			if (c == null)
				return "redirect:/country/list/1";
			countryService.delete(c, errors);
		}
		else
		{
			countryService.update(country, errors);
		}
		return String.format("redirect:%s", req.getHeader("referer"));
	}
}
