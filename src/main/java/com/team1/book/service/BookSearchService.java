package com.team1.book.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team1.domain.Book;
import com.team1.mapper.BookMapper;
import com.team1.util.Pagination;

@Service
public class BookSearchService {

	@Autowired
	BookMapper bookMapper;
	
	public List<Book> getListAll(){
		List<Book> list = null;
		list = bookMapper.selectAll();
		
		return list;
	}
	
	public Map<String, Object> getPage(int pageNo){
		Pagination paging = new Pagination();
		paging.setTotalItem(bookMapper.selectTotalCount());
		paging.setPageNo(pageNo);
		
		List<Book> list = null;
		list = bookMapper.selectPage(paging);
		
		Map<String, Object> map = new HashMap<>();
		map.put("books", list);
		map.put("paging", paging);
		return map;
	}
	
	public Book getBookByBookcode(int bookcode){
		Book book = null;
		book = bookMapper.selectByBookcode(bookcode);
		
		return book;
	}
}
