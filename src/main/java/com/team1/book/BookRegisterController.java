package com.team1.book;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.team1.book.service.BookRegisterService;
import com.team1.book.service.BookSearchService;
import com.team1.domain.Book;
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
		System.out.println(bookForm);
		
		if(errors.hasErrors()){
			System.out.println(errors);
			return "book/registerForm";
		}
		
		bookRegisterService.register(bookForm, errors);
		
		if(errors.hasErrors()){
			System.out.println(errors);
			return "book/registerForm";
		}
		
		return "redirect:/book/registerSuccess/" + bookForm.getBookCode();
	}

	@GetMapping("/registerSuccess/{bookcode}")
	public String registerSuccess(@PathVariable int bookcode, Model model){
		Book book = bookSearchService.getBookByBookcode(bookcode);
		model.addAttribute("book", book);
		return "book/registerSuccess";
	}
}
