package com.team1.cosmetic.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.team1.domain.Cosmetic;
import com.team1.mapper.CosmeticMapper;

@Service
public class CosmeticRegisterService {
	
	@Autowired
	CosmeticMapper cosmaticmapper;
	
	public void register(Cosmetic cosmatic, BindingResult errors) {
		
		if(!errors.hasErrors()) {
			cosmaticmapper.insert(cosmatic);
		}
	}
}
