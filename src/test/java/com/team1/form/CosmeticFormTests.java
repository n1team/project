package com.team1.form;


import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.validation.BeanPropertyBindingResult;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Validator;

import com.team1.form.CosmeticForm;

@RunWith(SpringRunner.class)
@SpringBootTest
public class CosmeticFormTests {
	
	@Autowired
	Validator validator;
	
	
	@Test
	public void test00_confirmValidator() {
		System.out.println("validator = " + validator);
	}
	
	@Test
	public void test01_getCosmaticName() {
		CosmeticForm cosmaticform = new  CosmeticForm();
//		cosmaticform.setProductname("sdfdsklfdsfdslfld");
		
		BindingResult errors = new BeanPropertyBindingResult(cosmaticform,"cosmaticform");
		
		validator.validate(cosmaticform, errors);
		
		if (errors.hasErrors()) {
			System.out.println("errors = " + errors);
			return;
		}
		System.out.println("cosmaticForm은 유효합니다");
	}
	
	@Test
	public void test02_getCosmaticNo() {
		CosmeticForm cosmaticform = new  CosmeticForm();
//		cosmaticform.setProductname("sdfdsklfdsfdslfld");
//		cosmaticform.setProductno(2345677);
		
		BindingResult errors = new BeanPropertyBindingResult(cosmaticform,"cosmaticform");
		
		validator.validate(cosmaticform, errors);
		
		if (errors.hasErrors()) {
			System.out.println("errors = " + errors);
			return;
		}
		System.out.println("cosmaticForm은 유효합니다");
	}
}
