package com.team1.cosmetic.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.team1.domain.Cosmetic;
import com.team1.mapper.CosmeticMapper;

@Service
public class CosmeticRegisterService {
	
	@Autowired
	CosmeticMapper cosmeticmapper;
	
	public void register(Cosmetic cosmetic, BindingResult errors) {
		
		if(!errors.hasErrors()) {
			cosmeticmapper.insert(cosmetic);
		}
	}
}
