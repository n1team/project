package com.team1.cosmatic.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.team1.domain.Cosmatic;
import com.team1.mapper.CosmaticMapper;

@Service
public class CosmaticModifyService {
	
	@Autowired
	CosmaticMapper cosmaticmapper;
	
	public void modify(Cosmatic cosmatic, BindingResult errors) {
		
		if(!errors.hasErrors())
			cosmaticmapper.updateByProductno(cosmatic);
	}
}