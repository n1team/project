package com.team1.book;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.team1.book.service.BookSearchService;
import com.team1.book.service.BookUnregisterService;
import com.team1.domain.Book;

@Controller
@RequestMapping("/book")
public class BookUnregisterController {

	@Autowired
	BookSearchService bookSearchService;
	
	@Autowired
	BookUnregisterService bookUnregisterService;
	
	@GetMapping("/unregister/{bookcode}")
	public String unregisterForm(@PathVariable int bookcode, Model model){
		Book book = bookSearchService.getBookByBookcode(bookcode);
		model.addAttribute("book", book);
		
		return "book/unregisterForm";
	}
	
	@PostMapping("/unregister/{bookcode}")
	public String unregister(@PathVariable int bookcode, Integer pageNo){
		bookUnregisterService.unregister(bookcode);
		System.err.println(bookcode);
		return "redirect:/book/unregisterSuccess/" + bookcode + "?pageNo=" + pageNo;
	}
	
	@GetMapping("/unregisterSuccess/{bookcode}")
	public String unregisterSuccess(@PathVariable int bookcode, Model model){
		return "book/unregisterSuccess";
	}
}
