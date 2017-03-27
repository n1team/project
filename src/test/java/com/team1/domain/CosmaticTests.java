package com.team1.domain;

import org.junit.Test;

import com.team1.domain.Cosmatic;

public class CosmaticTests {
	
	@Test
	public void test01_toString() {
		Cosmatic c = new Cosmatic();
		c.setProductname("dsklfkldsfdsfs");
		
		System.out.println(c);
	}
}
