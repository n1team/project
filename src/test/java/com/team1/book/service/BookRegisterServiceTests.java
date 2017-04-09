package com.team1.book.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.validation.BeanPropertyBindingResult;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Validator;

import com.team1.form.BookForm;

@RunWith(SpringRunner.class)
@SpringBootTest
public class BookRegisterServiceTests {

	@Autowired
	BookSearchService bookSearchService;
	
	@Autowired
	BookRegisterService bookRegisterService;
	
	@Autowired
	Validator validator;
	
	@Test
	public void test00_confirmBookSearchService(){
		System.out.println("bookSearchService= " + bookSearchService);
	}
	
	@Test
	public void test00_confirmBookRegisterService(){
		System.out.println("bookRegisterService= " + bookRegisterService);
	}
	
	@Test
	public void test00_confirmValidator() {
		System.out.println("validator=" + validator);	
	}
	
	@Test
	public void test01_register(){
		BookForm bookForm = new BookForm();
		BindingResult errors = new BeanPropertyBindingResult(bookForm, "bookForm");
		
		bookForm.setBookCode(8030760);
		bookForm.setBookName("하악하악");
		
		validator.validate(bookForm, errors);
		if(errors.hasErrors()){
			System.out.println("errors = " + errors);
			return;
		}
		
		bookRegisterService.register(bookForm, errors);
		if(errors.hasErrors()){
			System.out.println("errors = " + errors);
			return;
		}
		
		System.out.println("book = " + bookSearchService.getBookByBookcode(bookForm.getBookCode()));
	}
	
}
