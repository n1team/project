package com.team1.cosmetic.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team1.mapper.CosmeticMapper;

@Service
public class CosmeticUnregisterService {
	
	@Autowired
	CosmeticMapper cosmeticmapper;
	
	public void unregister(int productno) {
		cosmeticmapper.deleteByProductno(productno);
	}
}
