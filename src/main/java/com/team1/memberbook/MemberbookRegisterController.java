package com.team1.memberbook;

import javax.validation.Valid;

import org.omg.PortableInterceptor.SYSTEM_EXCEPTION;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.team1.domain.Memberbook;
import com.team1.form.MemberbookForm;
import com.team1.memberbook.service.MemberbookRegisterService;
import com.team1.memberbook.service.MemberbookSearchService;

@Controller
@RequestMapping("/memberbook")
public class MemberbookRegisterController {

	@Autowired
	MemberbookSearchService memberbookSearchService;
	
	@Autowired
	MemberbookRegisterService memberbookRegisterService;
	
	@GetMapping("/register")
	public String registerForm(MemberbookForm memberbookForm){

		System.out.println("GetMapping");
		return "memberbook/registerForm";
	}
	
	@PostMapping("/register")
	public String register_Filter( MemberbookForm memberbookForm, BindingResult errors) {
		System.out.println("Register Filter");
		//memberbookForm.setRentReserveDate( memberbookForm.ConvertStringToSqlDate() );
		return register( memberbookForm, errors);
	}
	
	public String register(@Valid MemberbookForm memberbookForm, BindingResult errors){
		System.out.println("Register");
		System.out.println(memberbookForm);
		
		if(errors.hasErrors()){
			System.out.println(errors);
			return "memberbook/registerForm";
		}
		
		memberbookRegisterService.register(memberbookForm, errors);
		
		if(errors.hasErrors()){
			System.out.println(errors);
			return "memberbook/registerForm";
		}
		
		return "redirect:/memberbook/registerSuccess/" + memberbookForm.getMemberCode();
	}
	
	@GetMapping("/registerSuccess/{memberCode}")
	public String registerSuccess(@PathVariable int memberCode, Model model){
		Memberbook memberbook = memberbookSearchService.getMemberbookByMembercode(memberCode);
		model.addAttribute("memberbook", memberbook);
		
		return "memberbook/registerSuccess";
	}
}
