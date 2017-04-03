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
import org.springframework.web.bind.annotation.RequestMapping;

import com.team1.domain.Note;
import com.team1.form.NoteForm;
import com.team1.note.service.NoteModifyService;
import com.team1.note.service.NoteSearchService;


@Controller
@RequestMapping("/note")
public class NoteModifyController {

	static Log log = LogFactory.getLog(NoteModifyController.class);
	
	@Autowired
	NoteSearchService noteSearchService;
	@Autowired
	NoteModifyService modifyService;

	@GetMapping("/modify/{noteNo}")
	public String modifyForm(@PathVariable int noteNo,NoteForm noteForm,Integer pageNo) {
		log.info("noteNo("+noteNo+")===noteForm==="+pageNo);
		Note note = noteSearchService.getListAllNo(noteNo);
		log.info("noteNo("+noteNo+")===noteForm2==="+pageNo);
		noteForm.setNote(note);
		log.info("noteNo("+noteNo+")===noteForm3==="+pageNo);
		return "note/list2";
	}
	
	@PostMapping("/modify/{pageNo}")
	public String modify(@Valid NoteForm noteForm, BindingResult errors,@PathVariable Integer pageNo) {
		log.info("noteNo("+pageNo+")===noteForm==="+pageNo);
		System.err.println(noteForm);
		
		if (errors.hasErrors()) {
			System.out.println(errors);
			return "note/list";
		}
		
		modifyService.modify(noteForm, errors);

		if (errors.hasErrors()) {
			System.out.println(errors);
			return "note/list";
		}
		return "redirect:/note/modifySuccess/"+noteForm.getNoteNo()+"?pageNo="+pageNo;
	}
	
	@GetMapping("/modifySuccess/{noteNo}")
	public String modifySuccess(@PathVariable int noteNo,Model model,Integer pageNo) {
		Map<String, Object> page = noteSearchService.getPage(pageNo);
		model.addAttribute("page", page);
		return "note/list";
	}

	
	
}




