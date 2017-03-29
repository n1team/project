package com.team1.memberbook.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.validation.BeanPropertyBindingResult;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Validator;

import com.team1.form.MemberbookForm;

@RunWith(SpringRunner.class)
@SpringBootTest
public class MemberbookRegisterServiceTests {
	
	@Autowired
	MemberbookSearchService memberbookSearchService;
	
	@Autowired
	MemberbookRegisterService memberbookRegisterService;
	
	@Autowired
	Validator validator;
	
	@Test
	public void test00_confirmMemberbookSearchService(){
		System.out.println("memberbookSearchService = " + memberbookSearchService);
	}
	
	@Test
	public void test00_confirmMemberbookRegisterService(){
		System.out.println("memberbookRegisterService = " + memberbookRegisterService);
	}
	
	@Test
	public void test00_confirmValidator(){
		System.out.println("validator = " + validator);
	}
	
	@Test
	public void test01_register(){
		MemberbookForm memberbookForm = new MemberbookForm();
		memberbookForm.setMemberName("레이아");
		BindingResult errors = new BeanPropertyBindingResult(memberbookForm, "memberbookForm");
		
		validator.validate(memberbookForm, errors);
		if(errors.hasErrors()){
			System.out.println(errors);
			return;
		}
		memberbookRegisterService.register(memberbookForm, errors);
		if(errors.hasErrors()){
			System.out.println(errors);
			return;
		}
		System.out.println("memberbook = " + memberbookSearchService.getMemberbookByMembercode(memberbookForm.getMemberCode()));
	}
}
