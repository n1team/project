package com.team1.form;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.validation.BeanPropertyBindingResult;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Validator;

@SpringBootTest
@RunWith(SpringRunner.class)
public class PositionFormTests {

	@Autowired
	Validator validator;
	
	@Test
	public void test00_validator(){
		System.out.println("유효함=="+validator);
		
	}
	
	@Test
	public void test01_getPstno(){
		PositionForm posForm = new PositionForm();
		posForm.setPstno(99);
		BindingResult errors = new BeanPropertyBindingResult(posForm, "PositionForm");
		validator.validate(posForm, errors);
		if(errors.hasErrors()){
			System.out.println("이런 에러래=="+errors);
			return;
		}
		System.out.println("유효함");
	}
	@Test
	public void test02_getPstname(){
		PositionForm posForm = new PositionForm();
		posForm.setPstname("KIM YOO YOUNG");
		posForm.setPstno(99);
		BindingResult errors = new BeanPropertyBindingResult(posForm, "PositionForm");
		validator.validate(posForm, errors);
		if(errors.hasErrors()){
			System.out.println("이런 에러래=="+errors);
			return;
		}
		System.out.println("유효함");
	}
}
