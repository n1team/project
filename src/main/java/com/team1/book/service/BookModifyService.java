package com.team1.book.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.team1.domain.Book;
import com.team1.mapper.BookMapper;

@Service
public class BookModifyService {

	@Autowired
	BookMapper bookMapper;
	
	public void modify(Book book, BindingResult errors){
		if(!errors.hasErrors())
			bookMapper.updateByBookcode(book);
	}
}
