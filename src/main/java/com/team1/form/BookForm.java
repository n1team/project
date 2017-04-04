package com.team1.form;

import javax.validation.constraints.Digits;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import com.team1.domain.Book;

public class BookForm extends Book {

	public void setBook(Book book){
		super.setBookCode(book.getBookCode());
		super.setBookName(book.getBookName());
		super.setWriter(book.getWriter());
		super.setPublishedDate(book.getPublishedDate());
		super.setCategorize(book.getCategorize());
		super.setPageNumber(book.getPageNumber());
		super.setPrice(book.getPrice());
	}
	
	@NotNull
	@Digits(integer=10, fraction=0)
	@Override
	public Integer getBookCode() {
		return super.getBookCode();
	}

	@Override
	public void setBookCode(Integer bookCode) {
		super.setBookCode(bookCode);
	}

	@NotNull
	@Size(max=35)
	@Override
	public String getBookName() {
		return super.getBookName();
	}

	@Override
	public void setBookName(String bookName) {
		super.setBookName(bookName);
	}

	@Size(max=20)
	@Override
	public String getWriter() {
		return super.getWriter();
	}

	@Override
	public void setWriter(String writer) {
		super.setWriter(writer);
	}

	@Size(max=12)
	@Override
	public String getPublishedDate() {
		return super.getPublishedDate();
	}

	@Override
	public void setPublishedDate(String publishedDate) {
		super.setPublishedDate(publishedDate);
	}

	@Size(max=20)
	@Override
	public String getCategorize() {
		return super.getCategorize();
	}

	@Override
	public void setCategorize(String categorize) {
		super.setCategorize(categorize);
	}

	@Digits(integer=10, fraction=0)
	@Override
	public Integer getPageNumber() {
		return super.getPageNumber();
	}

	@Override
	public void setPageNumber(Integer pageNumber) {
		super.setPageNumber(pageNumber);
	}

	@Digits(integer=10, fraction=0)
	@Override
	public Integer getPrice() {
		return super.getPrice();
	}

	@Override
	public void setPrice(Integer price) {
		super.setPrice(price);
	}
}
