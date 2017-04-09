package com.team1.player.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.validation.BeanPropertyBindingResult;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Validator;

import com.team1.form.PlayerForm;

@SpringBootTest
@RunWith(SpringRunner.class)
public class PlayerModityServiceTests {
	
	@Autowired
	PlayerRegisterService plyRegister;
	
	@Autowired
	PlayerSearchService plySearch;
	
	@Autowired
	Validator validator;
	
	@Test
	public void test00_PlayerRegisterService(){
		System.out.println("plyRegister=="+plyRegister);
	}
	@Test
	public void test00_plySearch(){
		System.out.println("plySearch=="+plySearch);
	}
	@Test
	public void test00_validator(){
		System.out.println("유효힘=="+validator);
	}
	
	@Test
	public void test01_modify(){
		PlayerForm plyForm = new PlayerForm();
		BindingResult errors = new BeanPropertyBindingResult(plyForm, "plyForm");
		plyForm.setPname("AKA");
		
		
		validator.validate(plyForm, errors);
		if(errors.hasErrors()){
			System.out.println("errors=="+errors);
			return;
			
		}
			plyRegister.register(plyForm, errors);
			if(errors.hasErrors()){
				System.out.println("errors=="+errors);
				return;
			
		
		}
		System.out.println("player=="+plySearch.getPlayerByPlayerno(plyForm.getPlayerno()));
	
	}
	
	
}
