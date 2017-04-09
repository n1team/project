package com.team1.position;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.team1.domain.Position;
import com.team1.position.service.PositionSearchService;
import com.team1.position.service.PositionUnRegisterService;

@Controller
@RequestMapping("/position")
public class PositionUnRegisterController {

	 static Log log = LogFactory.getLog(PositionUnRegisterController.class);
	 
	 @Autowired
	 PositionSearchService posSearch;
	 
	 @Autowired
	 PositionUnRegisterService posRegister;
	 
	 @GetMapping("/unregister/{pstno}")
	 public String unregisterForm(@PathVariable int pstno,Model model){
		 log.info("unregisterForm("+pstno+")");
		 Position pos = posSearch.getPositionByPstno(pstno);
		 return "position/unregisterForm";
	 }
	 @PostMapping("/unregister/{pstno}")
	 public String unregister(@PathVariable int pstno, Integer pageNo){
		 log.info("unregister("+pstno+")");
		 posRegister.unRegister(pstno);
		 return "redirect:/position/unregisterSuccess/"+pstno+"?pageNo="+pageNo;
	 }
	 @GetMapping("/unregisterSuccess/{pstno}")
	 public String unregisterSuccess(@PathVariable int pstno, Model model){
		 model.addAttribute("pstno", pstno);
		 return "position/unregisterSuccess";
	 }
}
