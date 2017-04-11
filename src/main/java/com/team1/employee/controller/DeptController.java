package com.team1.employee.controller;

import com.team1.employee.DeptService;
import com.team1.employee.EmpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller()
@RequestMapping("/dept")
public class DeptController {

	private static final int ITEMS_PER_PAGE = 10;

	private final DeptService deptService;

	@Autowired
	public DeptController(DeptService deptService)
	{
		this.deptService = deptService;
	}

	@RequestMapping("/")
	public String rootPage()
	{
		return "redirect:/dept/list/1";
	}

	@RequestMapping("/list")
	public String listPage()
	{
		return "redirect:/dept/list/1";
	}

	@RequestMapping("/list/{param}")
	public String listPage(@PathVariable String param, Model m)
	{
		if (!param.matches("^\\d{1,5}$"))
			return "redirect:/dept/list/1";

		int pageNumber = Integer.parseInt(param);
		pageNumber = Math.max(0, pageNumber - 1);
		m.addAttribute("data", deptService.getDepts(new PageRequest(pageNumber, ITEMS_PER_PAGE)));
		return "/employee/deptList";
	}

}
