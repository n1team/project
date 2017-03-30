package com.team1.player;

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

import com.team1.domain.Player;
import com.team1.form.PlayerForm;
import com.team1.player.service.PlayerModifyService;
import com.team1.player.service.PlayerSearchService;

@Controller
@RequestMapping("/player")
public class PlayerModifyController {

	static Log log = LogFactory.getLog(PlayerModifyController.class);
	
	@Autowired
	PlayerModifyService plyModify;
	
	@Autowired
	PlayerSearchService plySearch; 
	
	@GetMapping("/modify/{playerno}")
	public String modifyForm(PlayerForm plyForm, @PathVariable int playerno){
		log.info("modifyForm()");
		Player player = plySearch.getPlayerByPlayerno(playerno);
		plyForm.setPlayer(player);
		return "player/modifyForm";
	}
	
	@PostMapping("/modify")
	public String modify(@Valid PlayerForm plyForm,BindingResult errors, Integer pageNo){
		log.info("modify("+plyForm+")");
		System.out.println(plyForm);
		
		if(errors.hasErrors()){
			System.out.println(errors);
			return "player/modifyForm";
		
		}
		plyModify.modify(plyForm, errors);
		if(errors.hasErrors()){
			System.out.println(errors);
			return "player/modifyForm";
		}
		return "redirect:/player/modifySuccess/"+plyForm.getPlayerno()+"?pageNo="+pageNo;
		
	}
	
	@GetMapping("/modifySuccess/{playerno}")
	public String modifySuccess(@PathVariable int playerno, Model model){
		Player player = plySearch.getPlayerByPlayerno(playerno);
		model.addAttribute("player", player);
		return "player/modifySuccess";
		
	}
}
