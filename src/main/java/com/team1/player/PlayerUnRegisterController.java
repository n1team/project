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
import com.team1.player.service.PlayerUnRegisterService;
import com.team1.player.service.PlayerSearchService;


@Controller
@RequestMapping("/player")
public class PlayerUnRegisterController {

	static Log log = LogFactory.getLog(PlayerUnRegisterController.class);
	
	@Autowired
	PlayerSearchService plySearch;
	
	@Autowired
	PlayerUnRegisterService plyUnRegister;
	
	@GetMapping("/unregister/{playerno}")
	public String unregisterForm(@PathVariable int playerno,Model model){
		log.info("unregisterForm("+playerno+")");
		Player ply = plySearch.getPlayerByPlayerno(playerno);
		return "player/unregisterForm";
	}
	
	@PostMapping("/unregister/{playerno}")
	public String unregister(@PathVariable int playerno, Integer pageNo){
		log.info("unregister("+playerno+")");
		plyUnRegister.unRegister(playerno);		
		return "redirect:/player/unregisterSuccess/"+playerno+"?pageNo="+pageNo;
	}
	
	@GetMapping("/unregisterSuccess/{playerno}")
	public String unregisterSuccess(@PathVariable int playerno, Model model){
		model.addAttribute("playerno", playerno);
		return "player/unregisterSuccess";
		
	}
}
