package com.team1.position;

import java.util.List;
import java.util.Map;

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

import com.team1.domain.Position;
import com.team1.form.PositionForm;
import com.team1.position.service.PositionRegisterService;
import com.team1.position.service.PositionSearchService;

@RequestMapping("/position")
@Controller
public class PositionRegisterController {

	static Log log = LogFactory.getLog(PositionRegisterController.class);
	
	@Autowired
	PositionSearchService posService;
	
	@Autowired
	PositionRegisterService posRegister;
	
	@GetMapping("/register")
	public String registerForm(PositionForm posForm){
		log.info("registerForm()");
		return "position/registerForm";
	}
	@PostMapping("/register")
	public String register(@Valid PositionForm posForm, BindingResult errors){
		log.info("register("+posForm+")");
		System.out.println(posForm);
		
		if(errors.hasErrors()){
			System.out.println(errors);
			return "position/registerForm";
		}
		posRegister.register(posForm, errors);
		if(errors.hasErrors()){
			System.out.println(errors);
			return "position/registerForm";
		}
		return "redirect:/position/registerSuccess/"+posForm.getPstno();
		
	}
	
	@GetMapping("/registerSuccess/{pstno}")
		public String registerSuccess(@PathVariable int pstno, Model model){
		
		Position position = posService.getPositionByPstno(pstno, true);
		model.addAttribute("position", position);
		return "position/registerSuccess";
	}
	
}
