package com.team1.book.service;

import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.team1.domain.Book;

@RunWith(SpringRunner.class)
@SpringBootTest
public class BookSearchServiceTests {
	
	@Autowired
	BookSearchService bookSearchService;
	
	@Test
	public void test00_confirmService(){
		System.out.println("bookSearchService = " + bookSearchService);
	}
	
	@Test
	public void test01_getListAll(){
		List<Book> list = bookSearchService.getListAll();
		for(Book b : list)
			System.out.println(b);
	}
	
	@Test
	public void test01_getListAll_withMemberbook(){
		List<Book> list = bookSearchService.getListAll(true);
		for(Book b : list)
			System.out.println(b);
	}
	
	@Test
	public void test02_getPage(){
		Map<String, Object> map = bookSearchService.getPage(1);
		System.out.println(map.get("books"));
		System.out.println(map.get("paging"));
	}
	
	@Test
	public void test02_getPage_withMemberbook(){
		Map<String, Object> map = bookSearchService.getPage(1, true);
		System.out.println(map.get("books"));
		System.out.println(map.get("paging"));
	}
}
