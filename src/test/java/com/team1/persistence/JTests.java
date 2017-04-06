package com.team1.persistence;


import org.junit.Test;

public class JTests {

	@Test
	public void test01()
	{
		int count = 1;
		for (int i = 1; i != 0; i = i << 1)
		{
			System.out.format("%x, %d\n", i, count++);
		}
	}
}
