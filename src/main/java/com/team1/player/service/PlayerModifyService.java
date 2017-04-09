package com.team1.player.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.team1.domain.Player;
import com.team1.domain.Position;
import com.team1.mapper.PlayerMapper;
import com.team1.mapper.PositionMapper;

@Service
public class PlayerModifyService {

	@Autowired
	PlayerMapper plyMapper;
	
	@Autowired
	PositionMapper posMapper;
	
	public void modify(Player ply, BindingResult errors){
		if(ply.getPname()!= null) {
			Player player = plyMapper.selectByPlayerno(ply.getPlayerno());
			if(player == null)
				errors.reject("invalidPlayerno","유효한 숫자가 아닙니다.");
		}
		if(!errors.hasErrors())
			plyMapper.updateByPlayerno(ply);
	}
	
}
