package com.team1.memo;


import java.util.Date;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.team1.domain.Memo;
import com.team1.form.MemoForm;
import com.team1.memo.service.MemoRegisterService;
import com.team1.memo.service.MemoSearchService;

@Controller
@RequestMapping("/project")
public class MemoRegisterController {
	@Autowired
	MemoSearchService memoSearchService;
	@Autowired
	MemoRegisterService memoRegisterService;
	
	@GetMapping("/register")
	public String registerForm(MemoForm memoForm){

		return "project/registerForm";
		
	}
	@PostMapping("/register")
	public String register(@Valid MemoForm memoForm, BindingResult errors){
		
//		String name = memoForm.getMname();
//		name=name.replace("\u0020","&nbsp");
//		memoForm.setMname(name);
		
		String content = memoForm.getMcontent();
		content=content.replace("\u0020","&nbsp");
		content=content.replace("\r\n","<br>");
		memoForm.setMcontent(content);
		
		if(errors.hasErrors()){
			return "project/registerForm";
		}
		
		memoRegisterService.register(memoForm,errors);
		if(errors.hasErrors()){
			return "project/registerForm";
		}
		return "redirect:/project/registerSuccess/" + memoForm.getMno();
		
	}
	@GetMapping("registerSuccess/{mno}")
	public String registerSuccess(@PathVariable int mno, Model model){
		Memo memo = memoSearchService.getItem(mno);
		model.addAttribute("memo",memo);
		return "project/registerSuccess";
	}
}
