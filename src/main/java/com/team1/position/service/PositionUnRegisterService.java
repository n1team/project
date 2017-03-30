package com.team1.position.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.team1.mapper.PositionMapper;

@Service
public class PositionUnRegisterService {

	 @Autowired
	 PositionMapper posMapper;
	 
	 public void unRegister(int pstno){
		posMapper.deleteByPstno(pstno);
		 
	 }
}
