package com.team1.cosmatic.service;


import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.validation.BeanPropertyBindingResult;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Validator;

import com.team1.cosmatic.service.CosmaticModifyService;
import com.team1.cosmatic.service.CosmaticSearchService;
import com.team1.form.CosmaticForm;


@RunWith(SpringRunner.class)
@SpringBootTest
public class CosmaticModifyServiceTests {
	
	@Autowired
	CosmaticSearchService searchservice;
	
	@Autowired
	CosmaticModifyService modifyservice;
	
	@Autowired
	Validator validator;
	
	@Test
	public void test00_confirmCosmaticSearchService() {
		System.out.println("SearchService=" + searchservice);
		
	}
	@Test
	public void test00_confirmCosmaticRegisterService() {
		System.out.println("ModifyService=" + modifyservice);
		
	}
	@Test
	public void test00_confirmValidator() {
		System.out.println("validator=" + validator);
	}
	
	@Test
	public void test01_modify() {
		CosmaticForm cosmaticform = new CosmaticForm();
		BindingResult errors = new BeanPropertyBindingResult(cosmaticform, "cosmaticform");
		
		cosmaticform.setProductno(10026);
		cosmaticform.setCapacity("490ml");
		cosmaticform.setPrice(35000);
		cosmaticform.setProductname("fdsklfjdlsjfds");
		cosmaticform.setCategory("SKINCARE");
		
		validator.validate(cosmaticform, errors);
		if (errors.hasErrors()) {
			System.out.println("errors = " + errors);
			return;
		}
		
		modifyservice.modify(cosmaticform, errors);
		if (errors.hasErrors()) {
			System.out.println("errors = " + errors);
			return;
		}
		
		System.out.println("cosmatic = " + searchservice.getCosmaticByProductno(cosmaticform.getProductno()));
	}
}