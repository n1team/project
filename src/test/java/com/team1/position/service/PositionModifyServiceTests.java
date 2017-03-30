package com.team1.position.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.validation.BeanPropertyBindingResult;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Validator;

import com.team1.form.PositionForm;



@SpringBootTest
@RunWith(SpringRunner.class)
public class PositionModifyServiceTests {
	@Autowired
	PositionRegisterService posRegister;
	
	@Autowired
	PositionSearchService posSearch;
	
	@Autowired
	Validator validator;
	
	@Test
	public void test00_PositionRegisterService(){
		System.out.println("plyRegister=="+posRegister);
	}
	@Test
	public void test00_posSearch(){
		System.out.println("plySearch=="+posSearch);
	}
	@Test
	public void test00_validator(){
		System.out.println("유효힘=="+validator);
	}
	
	@Test
	public void test01_modify(){
		PositionForm posForm = new PositionForm();
		BindingResult errors = new BeanPropertyBindingResult(posForm, "posForm");
		posForm.setPstname("xxx");
		posForm.setPstno(99);
		
		validator.validate(posForm, errors);
		if(errors.hasErrors()){
			System.out.println("errors=="+errors);
			return;
		}
		posRegister.register(posForm, errors);
		if(errors.hasErrors()){
			System.out.println("errors=="+errors);
			return;
		}
		System.out.println("position=="+posSearch.getPositionByPstno(posForm.getPstno()));
	}
}
