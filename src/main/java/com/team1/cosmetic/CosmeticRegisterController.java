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

import com.team1.cosmetic.service.CosmeticRegisterService;
import com.team1.cosmetic.service.CosmeticSearchService;
import com.team1.domain.Cosmetic;
import com.team1.form.CosmeticForm;

@Controller
@RequestMapping("/cosmetic")
public class CosmeticRegisterController {

	static Log log = LogFactory.getLog(CosmeticRegisterController.class);
	
	@Autowired
	CosmeticSearchService searchservice;
	
	@Autowired
	CosmeticRegisterService registerservice;
	
	@GetMapping("/register")
	public String registerForm(CosmeticForm cosmeticform) {
		log.info("registerForm()");
		return "cosmetic/registerForm";
	}
	
	@PostMapping("/register")
	public String register(@Valid CosmeticForm cosmeticform, BindingResult errors, Integer pageNo) {
		log.info("register("+cosmeticform+")");
		log.info("register("+pageNo+")");
		System.out.println(cosmeticform);
		
		if (errors.hasErrors()) {
			System.out.println(errors);
			
			return "cosmetic/registerForm";
		}
		
		registerservice.register(cosmeticform, errors);
		
		if (errors.hasErrors()) {
			System.out.println(errors);
			
			return "cosmetic/registerForm";
		}
		
		return "redirect:/cosmetic/registerSuccess/" + cosmeticform.getProductno() + "?pageNo=" + pageNo;
	}
	
	@GetMapping("/registerSuccess/{productno}")
	public String registerSuccess(@PathVariable int productno, Model model) {
		
		Cosmetic cosmetic = searchservice.getCosmeticByProductno(productno);
		model.addAttribute("cosmetic", cosmetic);
		
		return "cosmetic/registerSuccess";
	}
}
