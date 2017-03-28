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
		return getListAll(false);
	}
	
	public List<Book> getListAll(boolean withMemberbook){
		List<Book> list = null;
		if(withMemberbook)
			list = bookMapper.selectAllWithMemberbook();
		else
			list = bookMapper.selectAll();
		return list;
	}
	
	public Map<String, Object> getPage(int pageNo){
		return getPage(pageNo, false);
	}
	
	public Map<String, Object> getPage(int pageNo, boolean withMemberbook){
		Pagination paging = new Pagination();
		paging.setTotalItem(bookMapper.selectTotalCount());
		paging.setPageNo(pageNo);
		
		List<Book> list = null;
		if(withMemberbook)
			list = bookMapper.selectPageWithMemberbook(paging);
		else
			list = bookMapper.selectPage(paging);
		
		Map<String, Object> map = new HashMap<>();
		map.put("books", list);
		map.put("paging", paging);
		
		return map;
	}
	
	public Book getBookByBookcode(int bookcode){
		return getBookByBookcode(bookcode);
	}
}
