package com.team1.memberbook.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.team1.domain.Memberbook;
import com.team1.mapper.MemberbookMapper;

@Service
public class MemberbookRegisterService {
	
	@Autowired
	MemberbookMapper memberbookMapper;
	
	public void register(Memberbook memberbook, BindingResult errors){
		if(!errors.hasErrors())
			memberbookMapper.insert(memberbook);		
	}	
}
