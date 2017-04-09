package com.team1.memo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.team1.domain.Memo;
import com.team1.mapper.MemoMapper;

@Service
public class MemoRegisterService {
	@Autowired
	MemoMapper memoMapper;
	
	public void register(Memo memo, BindingResult errors){
		if(!errors.hasErrors()){
			memoMapper.insert(memo);
		}
	}
	
}
