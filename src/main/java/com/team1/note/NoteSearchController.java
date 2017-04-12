package com.team1.note;

import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.core.context.SecurityContextHolder;
//import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.team1.domain.Note;
import com.team1.form.NoteForm;
import com.team1.note.service.NoteSearchService;

@Controller
@RequestMapping("/note")
public class NoteSearchController {
	static Log log = LogFactory.getLog(NoteSearchController.class);
	
	@Autowired
	NoteSearchService noteSearchService;
	
	@GetMapping("/page/{pageNo}")
	public String getPage(@PathVariable int pageNo, Model model,NoteForm noteForm) {
		log.info("getPage(" + pageNo + ")");
		Map<String, Object> page = noteSearchService.getPage(pageNo);
		model.addAttribute("page", page);
		model.addAttribute("from", new NoteForm());
		return "note/list";
	}
	
	
	
	
	@GetMapping("/summnote/{noteNo}") 
	public String getItemById(@PathVariable int noteNo, Model model , int pageNo) {
		log.info("getItem("+ noteNo + ")");
		Map<String, Object> page = noteSearchService.getPage(pageNo);
		Note note = noteSearchService.getNoteBynoteNo(noteNo);
		model.addAttribute("page", page);
		model.addAttribute("note", note);
		return "note/list";
	}


	

}
