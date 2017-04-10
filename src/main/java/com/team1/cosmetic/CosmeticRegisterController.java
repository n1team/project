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
@RequestMapping("/cosmatic")
public class CosmeticRegisterController {

	static Log log = LogFactory.getLog(CosmeticRegisterController.class);
	
	@Autowired
	CosmeticSearchService searchservice;
	
	@Autowired
	CosmeticRegisterService registerservice;
	
	@GetMapping("/register")
	public String registerForm(CosmeticForm cosmaticform) {
		log.info("registerForm()");
		return "cosmatic/registerForm";
	}
	
	@PostMapping("/register")
	public String register(@Valid CosmeticForm cosmaticform, BindingResult errors, Integer pageNo) {
		log.info("register("+cosmaticform+")");
		log.info("register("+pageNo+")");
		System.out.println(cosmaticform);
		
		if (errors.hasErrors()) {
			System.out.println(errors);
			
			return "cosmatic/registerForm";
		}
		
		registerservice.register(cosmaticform, errors);
		
		if (errors.hasErrors()) {
			System.out.println(errors);
			
			return "cosmatic/registerForm";
		}
		
		return "redirect:/cosmatic/registerSuccess/" + cosmaticform.getProductno() + "?pageNo=" + pageNo;
	}
	
	@GetMapping("/registerSuccess/{productno}")
	public String registerSuccess(@PathVariable int productno, Model model) {
		
		Cosmetic cosmatic = searchservice.getCosmaticByProductno(productno);
		model.addAttribute("cosmatic", cosmatic);
		
		return "cosmatic/registerSuccess";
	}
}
