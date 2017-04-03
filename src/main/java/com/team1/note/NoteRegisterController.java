package com.team1.note;



import java.util.Date;
import java.util.Map;

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

import com.team1.form.NoteForm;
import com.team1.note.service.NoteRegisterService;
import com.team1.note.service.NoteSearchService;

@Controller
@RequestMapping("/note")
public class NoteRegisterController {

	static Log log = LogFactory.getLog(NoteRegisterController.class);
	@Autowired
	NoteSearchService noteSearchService;
	@Autowired
	NoteRegisterService noteRegisterService; 

	@GetMapping("/reg")
	public String getList(Model model,NoteForm noteForm,Integer pageNo) {
		log.info("getList()");
		NoteForm form = new NoteForm();
		Map<String, Object> page = noteSearchService.getPage(pageNo);
		model.addAttribute("page", page);
		model.addAttribute("form", form);
		return "note/list";
	}
	
	
	@PostMapping("/reg/{pageNo}")
	public String register(@Valid NoteForm noteForm, BindingResult errors,@PathVariable Integer pageNo) {
		log.info("register(" + noteForm + ")");
		if (errors.hasErrors()) {
			return "note/list";
		}
		noteRegisterService.register(noteForm, errors);
		if (errors.hasErrors()) {
			return "note/list";
		}
		return "redirect:/note/list/"+noteForm.getNoteNo()+"?pageNo="+pageNo;
	}
	
//	@GetMapping("/list/{noteNo}")
//	public String registerSucess(@PathVariable int noteNo,Model model, HttpServletRequest request  ) {
//System.err.println(noteSearchService);
//		String pageNo = request.getParameter("pageNo");
//		Map<String, Object> page = noteSearchService.getPage(Integer.parseInt(pageNo));
//		System.err.println("ㅎㄱ=ㄱㄱ====================================");
//		NoteForm form = new NoteForm();
//		model.addAttribute("page", page);
//		model.addAttribute("noteForm", form);
//		System.err.println("22222222222222222222222222222222222=========");
//		return "note/list";
//	}
	
	@GetMapping("/list/{noteNo}")
	public String registerSucess(@PathVariable int noteNo,Model model, int pageNo  ) {
		Map<String, Object> page = noteSearchService.getPage(pageNo);
		NoteForm form = new NoteForm();
		model.addAttribute("page", page);
		model.addAttribute("noteForm", form);
		return "note/list";
	}

	
	
}




