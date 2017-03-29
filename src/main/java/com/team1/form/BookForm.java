package com.team1.form;

import java.math.BigDecimal;
import java.sql.Date;

import javax.validation.constraints.Digits;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import com.team1.domain.Book;

public class BookForm extends Book {

	@NotNull
	@Digits(integer=8, fraction=0)
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

	@Override
	public Date getPublishedDate() {
		return super.getPublishedDate();
	}

	@Override
	public void setPublishedDate(Date publishedDate) {
		super.setPublishedDate(publishedDate);
	}

	@Digits(integer=8, fraction=0)
	@Override
	public BigDecimal getCategorizeCode() {
		return super.getCategorizeCode();
	}

	@Override
	public void setCategorizeCode(BigDecimal categorizeCode) {
		super.setCategorizeCode(categorizeCode);
	}

	@Size(max=15)
	@Override
	public String getCheckState() {
		return super.getCheckState();
	}

	@Override
	public void setCheckState(String checkState) {
		super.setCheckState(checkState);
	}
	
}
