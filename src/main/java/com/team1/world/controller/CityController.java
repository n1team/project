package com.team1.world.controller;

import com.team1.world.CityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/city")
public class CityController {

	private static final int ITEMS_PER_PAGE = 10;

	private final CityService cityService;

	@Autowired
	public CityController(CityService cityService)
	{
		this.cityService = cityService;
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
		m.addAttribute("data", cityService.getCities(new PageRequest(pageNumber, ITEMS_PER_PAGE)));
		return "/world/cityList";
	}

}
