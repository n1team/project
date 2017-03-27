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
import com.team1.cosmatic.service.CosmaticUnregisterService;
import com.team1.domain.Cosmatic;
import com.team1.form.CosmaticForm;

@Controller
@RequestMapping("/cosmatic")
public class CosmaticUnregisterController {

	static Log log = LogFactory.getLog(CosmaticUnregisterController.class);
	
	@Autowired
	CosmaticSearchService searchservice;
	
	@Autowired
	CosmaticUnregisterService unregisterservice;
	
	@GetMapping("/unregister/{productno}")
	public String unregisterForm(@PathVariable int productno, Model model) {
		log.info("unregisterForm("+productno+")");
		Cosmatic cosmatic = searchservice.getCosmaticByProductno(productno);
		model.addAttribute("cosmatic", cosmatic);
		
		return "cosmatic/unregisterForm";
	}
	
	@PostMapping("/unregister/{productno}")
	public String unregisterFrom(@PathVariable int productno, Integer pageNo) {
		log.info("unregister("+productno+")");
		
		unregisterservice.unregister(productno); 
		
		return "redirect:/cosmatic/unregisterSuccess/" + productno + "?pageNo=" + pageNo;
	}
	
	
	@GetMapping("/unregisterSuccess/{productno}")
	public String unregisterSuccess(@PathVariable int productno, Model model) {
		
		model.addAttribute("productno", productno);
		
		return "cosmatic/unregisterSuccess";
	}
}
