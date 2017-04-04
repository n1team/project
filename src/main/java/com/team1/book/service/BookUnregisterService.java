package com.team1.book.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team1.mapper.BookMapper;

@Service
public class BookUnregisterService {

	@Autowired
	BookMapper bookMapper;
	
	public void unregister(int bookcode){
		bookMapper.deleteByBookcode(bookcode);
	}
}
