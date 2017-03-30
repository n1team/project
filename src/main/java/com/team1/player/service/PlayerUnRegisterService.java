package com.team1.player.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.team1.domain.Player;
import com.team1.domain.Position;
import com.team1.mapper.PlayerMapper;
import com.team1.mapper.PositionMapper;

@Service
public class PlayerUnRegisterService {

	@Autowired
	PlayerMapper plyMapper;
	
	public void unRegister(int playerno){
		plyMapper.deleteByPlayerno(playerno);
	}
	
}
