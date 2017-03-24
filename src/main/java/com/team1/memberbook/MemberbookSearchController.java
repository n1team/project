package com.team1.memberbook;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.team1.domain.Memberbook;
import com.team1.memberbook.service.MemberbookSearchService;


@Controller
@RequestMapping("/memberbook")
public class MemberbookSearchController {
	
	@Autowired
	MemberbookSearchService memberbookSearchService;
	
	@GetMapping("/list")
	public String getList(Model model){
		List<Memberbook> list = memberbookSearchService.getListAll(true);
		model.addAttribute("memberbooks", list);
		
		return "memberbook/list";
	}
}
