package com.team1.player.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.team1.domain.Player;
import com.team1.domain.Position;
import com.team1.mapper.PlayerMapper;
import com.team1.mapper.PositionMapper;

@Service
public class PlayerRegisterService {

	@Autowired
	PlayerMapper plyMapper;
	
	@Autowired
	PositionMapper posMapper;
	
	public void register(Player ply, BindingResult errors){
		if(ply.getPname()!= null) {
			Position pos = posMapper.selectByPstno(ply.getPstno());
			if(pos == null)
				errors.reject("invalidPstno","유효한 숫자가 아닙니다.");
		}
		if(!errors.hasErrors())
			plyMapper.insert(ply);
	}
	
}
