package com.team1.position;

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

import com.team1.domain.Position;
import com.team1.position.service.PositionSearchService;

@RequestMapping("/position")
@Controller
public class PositionSearchController {

	static Log log = LogFactory.getLog(PositionSearchController.class);
	
	@Autowired
	PositionSearchService posService;
	
	@GetMapping("/list")
	public String getListAll(Model model){
		log.info("getListAll()");
		List<Position> list = posService.getListAll(true);
		model.addAttribute("position", list);
		return "position/list";
	}
	@GetMapping("/page/{pageNo}")
	public String getPage(@PathVariable int pageNo, Model model){
		log.info("getPage("+pageNo+")");
		Map<String, Object> map = posService.getPage(pageNo);
		model.addAttribute("page", map);
		return "position/page";
	}
	
	@GetMapping("/item/{pstno}")
		public String getItemByPstno(@PathVariable int pstno, Model model){
		log.info("getItem("+pstno+")");
		Position position = posService.getPositionByPstno(pstno, true);
		model.addAttribute("position", position);
		return "position/item";
	}
	
}
