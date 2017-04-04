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

import com.team1.book.service.BookModifyService;
import com.team1.book.service.BookSearchService;
import com.team1.domain.Book;
import com.team1.form.BookForm;

@Controller
@RequestMapping("/book")
public class BookModifyController {

	@Autowired
	BookSearchService bookSearchService;
	
	@Autowired
	BookModifyService bookModifyService;
	
	@GetMapping("/modify/{bookcode}")
	public String modifyForm(BookForm bookForm, @PathVariable int bookcode){
		Book book = bookSearchService.getBookByBookcode(bookcode);
		bookForm.setBook(book);
		
		return "/book/modifyForm";
	}
	
	@PostMapping("/modify")
	public String modify(@Valid BookForm bookForm, BindingResult errors, Integer pageNo){
		System.out.println(bookForm);
		if(errors.hasErrors()){
			System.out.println(errors);
			return "book/modifyForm";
		}
		
		bookModifyService.modify(bookForm, errors);
		if(errors.hasErrors()){
			System.out.println(errors);
			return "book/modifyForm";
		}
		
		return "redirect:/book/modifySuccess/" + bookForm.getBookCode() + "?pageNo=" + pageNo;
	}
	
	@GetMapping("/modifySuccess/{bookcode}")
	public String modifySuccess(@PathVariable int bookcode, Model model){
		Book book = bookSearchService.getBookByBookcode(bookcode);
		model.addAttribute("book", book);
		return "book/modifySuccess";
	}
}
