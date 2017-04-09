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
public class PlayerFormTests {

		@Autowired
		Validator validator;
		
		@Test
		public void test00_validator(){
			System.out.println("유효성검사=="+validator);
		}
		
		@Test
		public void test01_getName(){
			PlayerForm playerForm = new PlayerForm();
			playerForm.setPname("LEE DEA HO");
			BindingResult errors = new BeanPropertyBindingResult(playerForm,"playerForm");
			
			validator.validate(playerForm, errors);
			if(errors.hasErrors()){
				System.out.println("errors=="+errors);
				return;
			}
			System.out.println("유효함");
		}
		
		@Test
		public void test02_getPlayerno(){
			PlayerForm playerForm = new PlayerForm();
			playerForm.setPname("BAE JANG HO");
			playerForm.setPlayerno(25);
			BindingResult errors = new BeanPropertyBindingResult(playerForm,"playerForm");
			
			validator.validate(playerForm, errors);
			if(errors.hasErrors()){
				System.out.println("errors=="+errors);
				return;
			}
			System.out.println("유효함");
		}
		
		
}

