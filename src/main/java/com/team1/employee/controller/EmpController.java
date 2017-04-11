package com.team1.employee.controller;

import com.team1.domain.Emp;
import com.team1.employee.DeptService;
import com.team1.employee.EmpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.MultiValueMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.math.BigDecimal;
import java.sql.Date;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/emp")
public class EmpController {

	private static final int ITEMS_PER_PAGE = 10;

	private final EmpService empService;
	private final DeptService deptService;

	@Autowired
	public EmpController(EmpService empService, DeptService deptService)
	{
		this.empService = empService;
		this.deptService = deptService;
	}

	@RequestMapping("/")
	public String rootPage()
	{
		return "redirect:/emp/list/1";
	}

	@RequestMapping("/list")
	public String listPage()
	{
		return "redirect:/emp/list/1";
	}

	@RequestMapping("/list/{param}")
	public String listPage(@PathVariable String param, Model m)
	{
		if (!param.matches("^\\d{1,5}$"))
			return "redirect:/emp/list/1";

		int pageNumber = Integer.parseInt(param);
		pageNumber = Math.max(0, pageNumber - 1);
		Page<Emp> page = empService.getEmps(new PageRequest(pageNumber, ITEMS_PER_PAGE));
		m.addAttribute("data", page);
		page.getContent().forEach(emp -> m.addAttribute("emp" + emp.getEmpno(), new Emp()));
		m.addAttribute("empNew", new Emp());
		return "/employee/empList";
	}

	@PostMapping("/insert")
	public String insertEmp(@Valid Emp emp,
	                        BindingResult errors,
	                        HttpServletRequest req,
	                        @RequestBody MultiValueMap<String,String> formData,
	                        Model m)
	{
		String rawHiredate = formData.getFirst("hiredate");
		String rawDeptno = formData.getFirst("deptno");

		try
		{
			emp.setHiredate(Date.valueOf(rawHiredate));
			emp.setDept(deptService.getByDeptno(Integer.parseInt(rawDeptno)));
			empService.insert(emp, errors);
		}
		catch (IllegalArgumentException e)
		{
			errors.reject("IllegalFormat", "잘못된 형식");
			m.addAttribute("error", "잘못된 형식");
			return "employee/empList";
		}

		return String.format("redirect:%s", req.getHeader("referer"));
	}

	@PostMapping("/update")
	public String updateEmp(@Valid Emp emp,
	                        BindingResult errors,
	                        HttpServletRequest req,
	                        @RequestBody MultiValueMap<String,String> formData,
	                        Model m)
	{
		if (!SecurityContextHolder.getContext().getAuthentication().getAuthorities().contains(new SimpleGrantedAuthority("ADMIN")))
			return "redirect:404";

		if (formData.getFirst("submit").equals("Delete"))
		{
			Emp e = empService.getByEmpno(emp.getEmpno());
			if (e == null)
				return "employee/empList";
			empService.delete(e, errors);
		}
		else
		{

			String rawHiredate = formData.getFirst("hiredate");
			String rawDeptno = formData.getFirst("deptno");
			try
			{
				emp.setHiredate(Date.valueOf(rawHiredate));
				emp.setDept(deptService.getByDeptno(Integer.parseInt(rawDeptno)));
				empService.update(emp, errors);
			} catch (IllegalArgumentException e)
			{
				errors.reject("IllegalFormat", "잘못된 형식");
				m.addAttribute("error", "잘못된 형식");
				return "employee/empList";
			}
		}
		return String.format("redirect:%s", req.getHeader("referer"));
	}

}
