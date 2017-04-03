package com.team1.book;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.team1.book.service.BookRegisterService;
import com.team1.book.service.BookSearchService;
import com.team1.form.BookForm;

@Controller
@RequestMapping("/book")
public class BookRegisterController {
	
	@Autowired
	BookSearchService bookSearchService;
	
	@Autowired
	BookRegisterService bookRegisterService;
	
	@GetMapping("/register")
	public String registerForm(BookForm bookForm){
		return "book/registerForm";
	}
	
	@PostMapping("/register")
	public String register(@Valid BookForm bookForm, BindingResult errors){
		
		return "redirect:/book/registerSucess/" + bookForm.getBookCode();
	}
}
