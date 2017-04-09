package com.team1.domain;

import java.sql.Date;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

public class Memo {

	private Integer mno;
	private String mname;
	private String mcontent;
	private String password;
	private Date mdate;

	public Memo() {
		// TODO Auto-generated constructor stub
	}
	
	@Override
	public String toString() {
		String str= null;
		
		ObjectMapper mapper = new ObjectMapper();
		try {
			str = mapper.writeValueAsString(this);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}

		return str;
	}

	/**
	 * @return the mno
	 */
	public Integer getMno() {
		return mno;
	}

	/**
	 * @param value the mno to set
	 */
	public Memo setMno(final Integer value) {
		mno = value;
		return this;
	}

	/**
	 * @return the mname
	 */
	public String getMname() {
		return mname;
	}

	/**
	 * @param value the mname to set
	 */
	public Memo setMname(final String value) {
		mname = value;
		return this;
	}

	/**
	 * @return the mcontent
	 */
	public String getMcontent() {
		return mcontent;
	}

	/**
	 * @param value the mcontent to set
	 */
	public Memo setMcontent(final String value) {
		mcontent = value;
		return this;
	}
	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}

	/**
	 * @param value the password to set
	 */
	public Memo setPassword(final String value) {
		password = value;
		return this;
	}
	/**
	 * @return the mdate
	 */
	public Date getMdate() {
		return mdate;
	}

	/**
	 * @param value the mdate to set
	 */
	public Memo setMdate(final Date value) {
		mdate = value;
		return this;
	}

}
