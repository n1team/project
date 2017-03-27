package com.team1.cosmatic.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team1.mapper.CosmaticMapper;

@Service
public class CosmaticUnregisterService {
	
	@Autowired
	CosmaticMapper cosmaticmapper;
	
	public void unregister(int productno) {
		cosmaticmapper.deleteByProductno(productno);
	}
}
