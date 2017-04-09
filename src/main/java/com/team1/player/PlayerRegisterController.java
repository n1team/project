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
import com.team1.player.service.PlayerRegisterService;
import com.team1.player.service.PlayerSearchService;

@Controller
@RequestMapping("/player")
public class PlayerRegisterController {

	static Log log = LogFactory.getLog(PlayerRegisterController.class);
	
	@Autowired
	PlayerSearchService plySearch;
	
	@Autowired
	PlayerRegisterService plyRegister;
	
	@GetMapping("/register")
	public String registerForm(PlayerForm plyForm){
		log.info("registerForm()");
		return "player/registerForm";
	}
	
	@PostMapping("/register")
	public String register(@Valid PlayerForm plyForm,BindingResult errors){
		log.info("register("+plyForm+")");
		System.out.println(plyForm);
		
		if(errors.hasErrors()){
			System.out.println(errors);
			return "player/registerForm";
		
		}
		plyRegister.register(plyForm, errors);
		if(errors.hasErrors()){
			System.out.println(errors);
			return "player/registerForm";
		}
		return "redirect:/player/registerSuccess/"+plyForm.getPlayerno();
	}
	
	@GetMapping("/registerSuccess/{playerno}")
	public String registerSuccess(@PathVariable int playerno, Model model){
		Player player = plySearch.getPlayerByPlayerno(playerno);
		model.addAttribute("player", player);
		return "player/registerSuccess";
		
	}
}
