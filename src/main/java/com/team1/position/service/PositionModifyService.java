package com.team1.position.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.team1.domain.Player;
import com.team1.domain.Position;
import com.team1.mapper.PlayerMapper;
import com.team1.mapper.PositionMapper;

@Service
public class PositionModifyService {

	 @Autowired
	 PlayerMapper plyMapper;
	 
	 @Autowired
	 PositionMapper posMapper;
	 
	 public void modify(Position pos, BindingResult errors){
		 if(pos.getPstname() != null){
			 Player ply = plyMapper.selectByPstno(pos.getPstno());
			 if(ply == null)
				 errors.reject("invalidPstno","유효한 숫자가 아닙니다.");
		 }
		 if (!errors.hasErrors())
			 posMapper.updateByPstno(pos);
	 }
}
