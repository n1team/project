package com.team1.employee.controller;

import com.team1.domain.Dept;
import com.team1.domain.Emp;
import com.team1.employee.DeptService;
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
import java.sql.Date;

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
		Page<Dept> page = deptService.getDepts(new PageRequest(pageNumber, ITEMS_PER_PAGE));
		m.addAttribute("data", page);
		page.getContent().forEach(d -> m.addAttribute("dept" + d.getDeptno(), new Dept()));
		m.addAttribute("deptNew", new Dept());
		return "/employee/deptList";
	}

	@PostMapping("/insert")
	public String insertDept(@Valid Dept dept,
	                        BindingResult errors,
	                        HttpServletRequest req,
	                        @RequestBody MultiValueMap<String,String> formData,
	                        Model m)
	{
		deptService.insert(dept, errors);
		return String.format("redirect:%s", req.getHeader("referer"));
	}

	@PostMapping("/update")
	public String updateEmp(@Valid Dept dept,
	                        BindingResult errors,
	                        HttpServletRequest req,
	                        @RequestBody MultiValueMap<String,String> formData,
	                        Model m)
	{
		if (formData.getFirst("submit").equals("Delete"))
		{
			Dept d = deptService.getByDeptno(dept.getDeptno());
			if (d == null)
				return "redirect:/emp/list/1";
			deptService.delete(d, errors);
		}
		else
		{
			deptService.update(dept, errors);
		}
		return String.format("redirect:%s", req.getHeader("referer"));
	}
}
