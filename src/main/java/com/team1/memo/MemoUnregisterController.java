package com.team1.memo;


import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.team1.domain.Memo;
import com.team1.memo.service.MemoSearchService;
import com.team1.memo.service.MemoUnregisterService;

@Controller
@RequestMapping("/memo")
public class MemoUnregisterController {
	@Autowired
	MemoSearchService memoSearchService;
	@Autowired
	MemoUnregisterService memoUnregisterService;
	
	@GetMapping("/unregister/{mno}")
	public String unregisterForm(@PathVariable int mno, Model model){
		
		Memo memo = memoSearchService.getItem(mno);
		model.addAttribute("memo",memo);
		
		return "memo/unregisterForm";
		
	}
	
	@PostMapping("/unregister/{mno}")
	public String unregister(@PathVariable int mno, Integer pageNo){
		
		memoUnregisterService.unregister(mno);
		
		return "redirect:/memo/unregisterSuccess/" + mno + "?pageNo=" + pageNo;
		
	}
	@GetMapping("unregisterSuccess/{mno}")
	public String unregisterSuccess(@PathVariable int mno, Model model){
		model.addAttribute("mno",mno);
		return "memo/unregisterSuccess";
	}
}
