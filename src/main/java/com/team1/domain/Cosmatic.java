package com.team1.domain;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
<<<<<<< HEAD
import com.team1.util.ToString;

public class Cosmatic extends ToString {

	private int productno;
	private String productname;
	private int price;
	private String capacity;
	private String category;

	public Cosmatic() {
		// TODO Auto-generated constructor stub
	}


	public int getProductno() {
		return productno;
	}

	public void setProductno(int productno) {
		this.productno = productno;
	}

	public String getProductname() {
		return productname;
	}

	public void setProductname(String productname) {
		this.productname = productname;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getCapacity() {
		return capacity;
	}

	public void setCapacity(String capacity) {
		this.capacity = capacity;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}


}
