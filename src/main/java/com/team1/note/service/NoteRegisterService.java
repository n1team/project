package com.team1.note.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.team1.domain.Note;
import com.team1.mapper.NoteMapper;


 
	 @Service
	  public class NoteRegisterService {
	  
	 	@Autowired
	 	NoteMapper noteMapper;
	 	
	 	public void register(Note note , BindingResult errors)  {
	 	 	
	 	 if (!errors.hasErrors())
	 			noteMapper.insert(note);
	 		}
	 	}
	 	
	 	
	 	
	  

