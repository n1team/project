package com.team1.note;

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
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.team1.domain.Note;
import com.team1.form.NoteForm;
import com.team1.note.service.NoteSearchService;
import com.team1.note.service.NoteUnRegisterService;

import oracle.jdbc.proxy.annotation.Post;

@Controller
@RequestMapping("/note")
public class NoteUnRegisterController {

	static Log log = LogFactory.getLog(NoteUnRegisterController.class);
	
	@Autowired
	NoteSearchService noteSearchService;

	@Autowired
	NoteUnRegisterService noteUnRegisterService;

	@GetMapping("/unregister/{noteNo}")
	public String unregisterForm(@PathVariable int noteNo , Model model) {
		log.info("unregisterForm("+noteNo+")");
		Note note = noteSearchService.getListAllNo(noteNo);
		model.addAttribute("note",note);
		return "note/list4";
	}
	
	@PostMapping("/unregister/{noteNo}")
	public String unregister(@PathVariable int noteNo, int pageNo) {
		log.info("unregisterN(" + noteNo + ")");
		noteUnRegisterService.unregister(noteNo);
		return "redirect:/note/unregisterSuccess/"+noteNo+"?pageNo="+pageNo;
	}
	
	@GetMapping("/unregisterSuccess/{noteNo}")
	public String unregisterSuccess(@PathVariable int noteNo, Model model,int pageNo) {
		log.info("unregisterSuccessN(" + noteNo + ")");
		log.info("sssssssssssssssssssssssssssssss(" + pageNo + ")");
		Map<String, Object> page = noteSearchService.getPage(pageNo);
		model.addAttribute("page", page);
		model.addAttribute("noteForm", new NoteForm());
		return "note/list";
	}

	
	
}




