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
import com.team1.memo.service.MemoModifyService;
import com.team1.memo.service.MemoSearchService;

@Controller
@RequestMapping("/memo")
public class MemoModifyController {
	@Autowired
	MemoSearchService memoSearchService;
	@Autowired
	MemoModifyService memoModifyService;
	
	@GetMapping("/modify/{mno}")
	public String modifyForm(MemoForm memoForm,@PathVariable int mno){
		
		Memo memo = memoSearchService.getItem(mno);
		////////////////////////////////////////////////////////////////////////////////////
		if(memo.getMcontent()!=null){
			String content = memo.getMcontent();
			content=content.replace("<br>","\r\n");
			content=content.replace("&nbsp","\u0020");
			memo.setMcontent(content);
			
//			String name = memoForm.getMname();
//			name=name.replace("&nbsp","\u0020");
//			memoForm.setMname(name);
		}
		////////////////////////////////////////////////////////////////////////////////////
		memoForm.setMemo(memo);
		
		return "memo/modifyForm";
		
	}
	@PostMapping("/modify")
	public String modify(@Valid MemoForm memoForm, BindingResult errors, Integer pageNo){
		String content = memoForm.getMcontent();
		content=content.replace("\r\n","<br>");
		content=content.replace("\u0020","&nbsp");
		memoForm.setMcontent(content);
		
//		String name = memoForm.getMname();
//		name=name.replace("\u0020","&nbsp");
//		memoForm.setMname(name);
		
		//util.date => sql.dqte 현재시간을 sql.date로
		Date date = new Date();
		java.sql.Date d = new java.sql.Date(date.getTime());
		memoForm.setMdate(d);
		
		if(errors.hasErrors()){
			return "memo/modifyForm";
		}
		
		memoModifyService.modify(memoForm,errors);
		if(errors.hasErrors()){
			return "memo/modifyForm";
		}
		return "redirect:/memo/modifySuccess/" + memoForm.getMno() + "?pageNo=" + pageNo;
		
	}
	@GetMapping("modifySuccess/{mno}")
	public String modifySuccess(@PathVariable int mno, Model model){
		Memo memo = memoSearchService.getItem(mno);
		model.addAttribute("memo",memo);
		return "memo/modifySuccess";
	}
}
