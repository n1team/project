package com.team1.form;

import java.sql.Date;

import javax.validation.constraints.Digits;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import com.team1.domain.Memo;



public class MemoForm extends Memo{

	public void setMemo(Memo memo){
		super.setMno(memo.getMno());
		super.setMname(memo.getMname());
		super.setMcontent(memo.getMcontent());
		super.setPassword(memo.getPassword());
//		super.setCount(memo.getCount());
	}
	
	@NotNull
	@Size(max=100)
	@Override
	public String getMname() {
		// TODO Auto-generated method stub
		return super.getMname();
	}

	@Override
	public Memo setMname(String value) {
		if(value.equals(""))
			value=null;
		return super.setMname(value);
	}
	@Size(max=4000)
	@Override
	public String getMcontent() {
		// TODO Auto-generated method stub
		return super.getMcontent();
	}

	@Override
	public Memo setMcontent(String value) {
		// TODO Auto-generated method stub
		return super.setMcontent(value);
	}
	
	@Size(max=20)
	@Override
	public String getPassword() {
		// TODO Auto-generated method stub
		return super.getPassword();
	}
	/*@Digits(integer=4,fraction=0)
	@Override
	public Integer getCount() {
		// TODO Auto-generated method stub
		return super.getCount();
	}

	@Override
	public Memo setCount(Integer value) {
		// TODO Auto-generated method stub
		return super.setCount(value);
	}*/

	@Override
	public Memo setPassword(String value) {
		if(value.equals(""))
			value=null;
		return super.setPassword(value);
	}
	
	@Override
	public Date getMdate() {
		// TODO Auto-generated method stub
		return super.getMdate();
	}

	@Override
	public Memo setMdate(Date value) {
		// TODO Auto-generated method stub
		return super.setMdate(value);
	}
	
}
