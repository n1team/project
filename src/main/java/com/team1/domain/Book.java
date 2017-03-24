package com.team1.domain;

import java.math.BigDecimal;
import java.sql.Date;

public class Book extends ToString {
	private Integer bookCode;
	private String bookName;
	private String writer;
	private Date publishedDate;
	private BigDecimal categorizeCode;
	private String checkState;

	public Book() {
		
	}

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

	public Date getPublishedDate() {
		return publishedDate;
	}

	public void setPublishedDate(Date publishedDate) {
		this.publishedDate = publishedDate;
	}

	public BigDecimal getCategorizeCode() {
		return categorizeCode;
	}

	public void setCategorizeCode(BigDecimal categorizeCode) {
		this.categorizeCode = categorizeCode;
	}

	public String getCheckState() {
		return checkState;
	}

	public void setCheckState(String checkState) {
		this.checkState = checkState;
	}
}
