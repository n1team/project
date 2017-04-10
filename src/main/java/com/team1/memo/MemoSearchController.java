package com.team1.memo;

import java.util.Map;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.team1.domain.Memo;
import com.team1.memo.service.MemoRegisterService;
import com.team1.memo.service.MemoSearchService;

@Controller
@RequestMapping("/memo")
public class MemoSearchController {
	@Autowired
	MemoSearchService memoSearchService;
	@Autowired
	MemoRegisterService memoRegisterService;
	
	@GetMapping("/wireframe")
	public String getwireframe(Model model) {
		
		return "memo/wireframe";
	}
	
	@GetMapping("/memo/{pageNo}")
	public String getmemo(@PathVariable int pageNo, Model model) {
		Map<String, Object> page = memoSearchService.getPage(pageNo); 
		model.addAttribute("page",page);
		return "memo/memo";
	}
	@GetMapping("/item/{mno}")
	public String getItem(@PathVariable int mno, Model model){
		Memo memo = memoSearchService.getItem(mno);
		model.addAttribute("memo",memo);
		
		return "memo/item";
	}
}
