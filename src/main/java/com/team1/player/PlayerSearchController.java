package com.team1.player;

import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.team1.domain.Player;
import com.team1.player.service.PlayerSearchService;

@Controller
@RequestMapping("/player")
public class PlayerSearchController {

	static Log log = LogFactory.getLog(PlayerSearchController.class);
	@Autowired
	PlayerSearchService playerSearchService;
	
	@GetMapping("/list")
		public String getListAll(Model model){
		log.info("getListAll()");
		
		List<Player> list = playerSearchService.getListAll(true);
		model.addAttribute("player", list);
		return "player/list";
	}
	
	@GetMapping("/page/{pageNo}")
	public String getPage(@PathVariable int pageNo, Model model){
		log.info("getPage("+pageNo+")");
		Map<String, Object> map = playerSearchService.getPage(pageNo);
		model.addAttribute("page", map);
		return "player/page";
	}
	
	@GetMapping("/item/{playerno}")
	public String getItemByPlayerno(@PathVariable int playerno, Model model){
		log.info("getItem("+playerno+")");
		Player player = playerSearchService.getPlayerByPlayerno(playerno, true);
		model.addAttribute("player", player);
		return "player/item";
	}
	
			
}
