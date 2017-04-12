package com.team1.note.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.team1.domain.Note;
import com.team1.mapper.NoteMapper;


 
	 @Service
	  public class NoteRegisterService {
	  
	 	@Autowired
	 	NoteMapper noteMapper;
	 	
	 	public void register(Note note , BindingResult errors)  {
	 		Object o = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
	 		String a = null;
			if (!(o instanceof String))
			{
				UserDetails ud = (UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
				System.out.println("++++++++"+ud.getUsername());
				a=ud.getUsername();
			}
			Map<String, Object> param = new HashMap<>();
			param.put("note", note);
			param.put("userName", a);
	 	 if (!errors.hasErrors())
	 			noteMapper.insert(param);
	 		}
	 	}
	  

