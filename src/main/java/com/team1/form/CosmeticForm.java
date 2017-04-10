package com.team1.form;

import javax.validation.constraints.Digits;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import com.team1.domain.Cosmetic;

public class CosmeticForm extends Cosmetic{
	
	public void setCosmatic(Cosmetic cosmatic) {
		super.setProductno(cosmatic.getProductno());
		super.setProductname(cosmatic.getProductname());
		super.setPrice(cosmatic.getPrice());
		super.setCapacity(cosmatic.getCapacity());
		super.setCategory(cosmatic.getCategory());
	}
	
	@Digits(integer=5, fraction=0)
	@Override
	public int getProductno() {
		// TODO Auto-generated method stub
		return super.getProductno();
	}

	@Override
	public void setProductno(int productno) {
		// TODO Auto-generated method stub
		super.setProductno(productno);
	}
	
	@Size(max=50)
	@NotNull
	@Override
	public String getProductname() {
		// TODO Auto-generated method stub
		return super.getProductname();
	}

	@Override
	public void setProductname(String productname) {
		// TODO Auto-generated method stub
		super.setProductname(productname);
	}
	
	@Digits(integer=6, fraction=0)
	@Override
	public int getPrice() {
		// TODO Auto-generated method stub
		return super.getPrice();
	}

	@Override
	public void setPrice(int price) {
		// TODO Auto-generated method stub
		super.setPrice(price);
	}
	
	@Size(max=6)
	@Override
	public String getCapacity() {
		// TODO Auto-generated method stub
		return super.getCapacity();
	}

	@Override
	public void setCapacity(String capacity) {
		// TODO Auto-generated method stub
		super.setCapacity(capacity);
	}
	
	@Size(max=10)
	@Override
	public String getCategory() {
		// TODO Auto-generated method stub
		return super.getCategory();
	}

	@Override
	public void setCategory(String category) {
		// TODO Auto-generated method stub
		super.setCategory(category);
	}
	
	
}
