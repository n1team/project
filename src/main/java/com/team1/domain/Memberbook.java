package com.team1.domain;

import java.sql.Date;
import java.util.List;

public class Memberbook extends ToString{
	private Integer memberCode;
	private String memberName;
	private Integer bookCode;
	private String checkState;
	private Date rentReserveDate;
	
	private List<Book> books;	

	public List<Book> getBooks() {
		return books;
	}

	public void setBooks(List<Book> books) {
		this.books = books;
	}

	public Memberbook() {

	}

	public Integer getMemberCode() {
		return memberCode;
	}

	public void setMemberCode(Integer memberCode) {
		this.memberCode = memberCode;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public Integer getBookCode() {
		return bookCode;
	}

	public void setBookCode(Integer bookCode) {
		this.bookCode = bookCode;
	}

	public String getCheckState() {
		return checkState;
	}

	public void setCheckState(String checkState) {
		this.checkState = checkState;
	}

	public Date getRentReserveDate() {
		return rentReserveDate;
	}

	public void setRentReserveDate(Date rentReserveDate) {
		this.rentReserveDate = rentReserveDate;
	}
}
