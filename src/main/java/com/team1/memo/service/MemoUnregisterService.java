package com.team1.memo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team1.mapper.MemoMapper;

@Service
public class MemoUnregisterService {
	@Autowired
	MemoMapper memoMapper;
	
	public void unregister(int mno){
			memoMapper.deleteByMno(mno);
	}
	
}
