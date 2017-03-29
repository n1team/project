package com.team1.form;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.validation.BeanPropertyBindingResult;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Validator;

@RunWith(SpringRunner.class)
@SpringBootTest
public class MemberbookFormTests {

	@Autowired
	Validator validator;
	
	@Test
	public void test00_confirmValidator(){
		System.out.println("validator = " + validator);
	}
	
	@Test
	public void test01_getName(){
		MemberbookForm memberbookForm = new MemberbookForm();
		memberbookForm.setMemberName("레이");
		
		BindingResult errors = new BeanPropertyBindingResult(memberbookForm, "memberbookForm");
		
		validator.validate(memberbookForm, errors);
		
		if(errors.hasErrors()){
			System.out.println("errors = " + errors);
			return;
		}
		System.out.println("memberbookForm에는 유효합니다.");
	}
}
