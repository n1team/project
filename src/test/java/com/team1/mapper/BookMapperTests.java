package com.team1.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.team1.domain.Book;
import com.team1.util.Pagination;

@RunWith(SpringRunner.class)
@SpringBootTest
public class BookMapperTests {

	@Autowired
	BookMapper bookMapper;
	
	@Test
	public void test00_confirmMapper(){
		System.out.println("bookMapper = " + bookMapper);
	}
	
	@Test
	public void test00_selectTotalCount(){
		System.out.println("totalCount = " + bookMapper.selectTotalCount());
	}
	
	@Test
	public void test01_selectAll(){
		List<Book> list = bookMapper.selectAll();
		
		for(Book b : list)
			System.out.println(b);
	}
	
	@Test
	public void test02_selectPage(){
		Pagination paging = new Pagination();
		paging.setTotalItem(bookMapper.selectTotalCount());
		paging.setPageNo(1);
		
		List<Book> list = bookMapper.selectPage(paging);
		
		for(Book b : list)
			System.out.println(b);
	}
	
	@Test
	public void test03_selectByBookcode(){
		Book book = bookMapper.selectByBookcode(11114260);
		
		System.out.println("book = " + book);
	}
	
}
