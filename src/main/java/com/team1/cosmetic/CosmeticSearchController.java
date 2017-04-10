package com.team1.cosmetic;

import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.team1.cosmetic.service.CosmeticSearchService;
import com.team1.domain.Cosmetic;

@Controller
@RequestMapping("/cosmatic")
public class CosmeticSearchController {

	static Log log = LogFactory.getLog(CosmeticSearchController.class);
	
	@Autowired
	CosmeticSearchService cosmaticsearchservice;
	
	@GetMapping("/list")
	public String getListAll(Model model) {
		log.info("getListAll()");
		
		List<Cosmetic> list = cosmaticsearchservice.getListAll();
		model.addAttribute("cosmatic", list);
		
		return "cosmatic/list";
	}
	
	
	@GetMapping("/page/{pageNo}")
	public String getPage(@PathVariable int pageNo, Model model) {
		log.info("getPage("+pageNo+")");
		
		Map<String, Object> page = cosmaticsearchservice.getPage(pageNo);
		model.addAttribute("page", page);
		
		return "cosmatic/page";
	}
	
	
	
	@GetMapping("/item/{productno}")
	public String getItemByProductno(@PathVariable int productno, Model model) {
		log.info("getItem("+productno+")");
		
		Cosmetic cosmatic = cosmaticsearchservice.getCosmaticByProductno(productno);
		model.addAttribute("cosmatic", cosmatic);
		
		return "cosmatic/item";
	}
	
	@GetMapping("/category/{category}")
	public String getItemByCategory(@PathVariable String category, Model model) {
		log.info("getCategory("+category+")");
		
		List<Cosmetic> cosmatic = cosmaticsearchservice.getCosmaticByCategory(category);
		model.addAttribute("cosmatic", cosmatic);
		
		return "cosmatic/category";
	}
	
}
