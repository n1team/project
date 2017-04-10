package com.team1.domain;

import com.team1.util.ToString;

public class Book extends ToString {

	private Integer bookCode;
	private String bookName;
	private String writer;
	private String publishedDate;
	private String categorize;
	private Integer pageNumber;
	private Integer price;

	public Integer getBookCode() {
		return bookCode;
	}
	
	public void setBookCode(Integer bookCode) {
		this.bookCode = bookCode;
	}
	
	public String getBookName() {
		return bookName;
	}

	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	
	public String getWriter() {
		return writer;
	}
	
	public void setWriter(String writer) {
		this.writer = writer;
	}
	
	public String getPublishedDate() {
		return publishedDate;
	}
	
	public void setPublishedDate(String publishedDate) {
		this.publishedDate = publishedDate;
	}
	
	public String getCategorize() {
		return categorize;
	}
	
	public void setCategorize(String categorize) {
		this.categorize = categorize;
	}
	
	public Integer getPageNumber() {
		return pageNumber;
	}
	
	public void setPageNumber(Integer pageNumber) {
		this.pageNumber = pageNumber;
	}
	
	public Integer getPrice() {
		return price;
	}
	
	public void setPrice(Integer price) {
		this.price = price;
	}
}
