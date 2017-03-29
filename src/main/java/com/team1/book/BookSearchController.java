package com.team1.book;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.team1.book.service.BookSearchService;
import com.team1.domain.Book;

@Controller
@RequestMapping("/book")
public class BookSearchController {

	@Autowired
	BookSearchService bookSearchService;
	
	@GetMapping("/list")
	public String getList(Model model){
		
		List<Book> list = bookSearchService.getListAll(true);
		model.addAttribute("books", list);
		
		return "book/list";
	}
	
	@GetMapping("/page/{pageNo}")
	public String getPage(@PathVariable int pageNo, Model model){
		
		Map<String, Object> page = bookSearchService.getPage(pageNo);
		model.addAttribute("page", page);
		
		return "book/page";
	}
	
	@GetMapping("/item/{bookcode}")
	public String getItem(@PathVariable int bookcode, Model model){
		
		Book book = bookSearchService.getBookByBookcode(bookcode, true);
		model.addAttribute("book", book);
		
		return "book/item";
	}
}
