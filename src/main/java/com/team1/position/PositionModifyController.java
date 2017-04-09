package com.team1.position;

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
import com.team1.position.service.PositionModifyService;
import com.team1.position.service.PositionSearchService;



@Controller
@RequestMapping("/position")
public class PositionModifyController {

	static Log log = LogFactory.getLog(PositionModifyController.class);
	
	@Autowired
	PositionModifyService posModify;
	
	@Autowired
	PositionSearchService posSearch;
	
	@GetMapping("/modify/{pstno}")
	public String modifyForm(PositionForm posForm,@PathVariable int pstno){
		log.info("modifyForm()");
		Position position = posSearch.getPositionByPstno(pstno);
		posForm.setPosition(position);
		return "position/modifyForm";
	}
	
	@PostMapping("/modify")
	public String modify(@Valid PositionForm posForm,BindingResult errors, Integer pageNo){
		log.info("modify("+posForm+")");
		System.out.println(posForm);
		
		if(errors.hasErrors()){
			System.out.println(errors);
			return "position/modifyForm";
		}
		posModify.modify(posForm, errors);
		if(errors.hasErrors()){
			System.out.println(errors);
			return "position/modifyForm";
		}
		return "redirect:/position/modifySuccess/"+posForm.getPstno()+"?pageNo="+pageNo;
	}
	
	@GetMapping("/modifySuccess/{pstno}")
	public String modifySuccess(@PathVariable int pstno, Model model){
		Position pos = posSearch.getPositionByPstno(pstno);
		model.addAttribute("position", pos);
		return "position/modifySuccess";
	}
	
}
