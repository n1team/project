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
import com.team1.domain.Cosmetic;
import com.team1.form.CosmeticForm;

@Controller
@RequestMapping("/cosmetic")
public class CosmeticModifyController {

	static Log log = LogFactory.getLog(CosmeticModifyController.class);
	
	@Autowired
	CosmeticSearchService searchservice;
	
	@Autowired
	CosmeticModifyService modifyservice;
	
	@GetMapping("/modify/{productno}")
	public String modifyForm(CosmeticForm cosmeticform,@PathVariable int productno) {
		log.info("ModifyForm("+productno+")");
		Cosmetic cosmetic = searchservice.getCosmeticByProductno(productno);
		cosmeticform.setCosmetic(cosmetic);
		
		return "cosmetic/modifyForm";
	}
	
	@PostMapping("/modify")
	public String register(@Valid CosmeticForm cosmeticform, BindingResult errors, Integer pageNo) {
		log.info("modify("+cosmeticform+")");
		System.out.println(cosmeticform);
		
		if (errors.hasErrors()) {
			System.out.println(errors);
			
			return "cosmetic/modifysForm";
		}
		
		modifyservice.modify(cosmeticform, errors);
		
		if (errors.hasErrors()) {
			System.out.println(errors);
			
			return "cosmetic/modifysForm";
		}
		
		return "redirect:/cosmetic/modifySuccess/" + cosmeticform.getProductno() + "?pageNo=" + pageNo;
	}
	
	@GetMapping("/modifySuccess/{productno}")
	public String registerSuccess(@PathVariable int productno, Model model) {
		
		Cosmetic cosmetic = searchservice.getCosmeticByProductno(productno);
		model.addAttribute("cosmetic", cosmetic);
		
		return "cosmetic/modifySuccess";
	}
}
