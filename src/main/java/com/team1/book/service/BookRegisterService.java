package com.team1.book.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.team1.domain.Book;
import com.team1.mapper.BookMapper;

@Service
public class BookRegisterService {
	
	@Autowired
	BookMapper bookMapper;
	
	public void register(Book book, BindingResult errors){
		if(!errors.hasErrors())
			bookMapper.insert(book);
	}
}
