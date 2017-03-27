package com.team1.cosmatic;

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

import com.team1.cosmatic.service.CosmaticModifyService;
import com.team1.cosmatic.service.CosmaticSearchService;
import com.team1.domain.Cosmatic;
import com.team1.form.CosmaticForm;

@Controller
@RequestMapping("/cosmatic")
public class CosmaticModifyController {

	static Log log = LogFactory.getLog(CosmaticModifyController.class);
	
	@Autowired
	CosmaticSearchService searchservice;
	
	@Autowired
	CosmaticModifyService modifyservice;
	
	@GetMapping("/modify/{productno}")
	public String modifyForm(CosmaticForm cosmaticform,@PathVariable int productno) {
		log.info("ModifyForm("+productno+")");
		Cosmatic cosmatic = searchservice.getCosmaticByProductno(productno);
		cosmaticform.setCosmatic(cosmatic);
		
		return "cosmatic/modifyForm";
	}
	
	@PostMapping("/modify")
	public String register(@Valid CosmaticForm cosmaticform, BindingResult errors, Integer pageNo) {
		log.info("modify("+cosmaticform+")");
		System.out.println(cosmaticform);
		
		if (errors.hasErrors()) {
			System.out.println(errors);
			
			return "cosmatic/modifysForm";
		}
		
		modifyservice.modify(cosmaticform, errors);
		
		if (errors.hasErrors()) {
			System.out.println(errors);
			
			return "cosmatic/modifysForm";
		}
		
		return "redirect:/cosmatic/modifySuccess/" + cosmaticform.getProductno() + "?pageNo=" + pageNo;
	}
	
	@GetMapping("/modifySuccess/{productno}")
	public String registerSuccess(@PathVariable int productno, Model model) {
		
		Cosmatic cosmatic = searchservice.getCosmaticByProductno(productno);
		model.addAttribute("cosmatic", cosmatic);
		
		return "cosmatic/modifySuccess";
	}
}
