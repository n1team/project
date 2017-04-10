package com.team1.cosmetic;

import javax.validation.Valid;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.team1.cosmetic.service.CosmeticModifyService;
import com.team1.cosmetic.service.CosmeticSearchService;
import com.team1.cosmetic.service.CosmeticUnregisterService;
import com.team1.domain.Cosmetic;
import com.team1.form.CosmeticForm;

@Controller
@RequestMapping("/cosmetic")
public class CosmeticUnregisterController {

	static Log log = LogFactory.getLog(CosmeticUnregisterController.class);
	
	@Autowired
	CosmeticSearchService searchservice;
	
	@Autowired
	CosmeticUnregisterService unregisterservice;
	
	@GetMapping("/unregister/{productno}")
	public String unregisterForm(@PathVariable int productno, Model model) {
		log.info("unregisterForm("+productno+")");
		Cosmetic cosmetic = searchservice.getCosmeticByProductno(productno);
		model.addAttribute("cosmetic", cosmetic);
		
		return "cosmetic/unregisterForm";
	}
	
	@PostMapping("/unregister/{productno}")
	public String unregisterFrom(@PathVariable int productno, Integer pageNo) {
		log.info("unregister("+productno+")");
		
		unregisterservice.unregister(productno); 
		
		return "redirect:/cosmetic/unregisterSuccess/" + productno + "?pageNo=" + pageNo;
	}
	
	
	@GetMapping("/unregisterSuccess/{productno}")
	public String unregisterSuccess(@PathVariable int productno, Model model) {
		
		model.addAttribute("productno", productno);
		
		return "cosmetic/unregisterSuccess";
	}
}
