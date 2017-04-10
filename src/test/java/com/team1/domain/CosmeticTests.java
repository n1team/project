package com.team1.domain;

import org.junit.Test;

import com.team1.domain.Cosmetic;

public class CosmeticTests {
	
	@Test
	public void test01_toString() {
		Cosmetic c = new Cosmetic();
		c.setProductname("dsklfkldsfdsfs");
		
		System.out.println(c);
	}
}
