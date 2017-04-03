package com.team1.city;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.context.embedded.LocalServerPort;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.context.SpringBootTest.WebEnvironment;
import org.springframework.boot.test.web.client.TestRestTemplate;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest(webEnvironment=WebEnvironment.RANDOM_PORT)
public class CitySearchControllerTests {
	
	@LocalServerPort
	int port;
	
	@Autowired
	TestRestTemplate rest;
	
	@Test
	public void test00_confirmTestRestTemplate() {
		System.out.println("port=" + port);
		System.out.println("rest=" + rest);
	}
	
	@Test
	public void test01_getList() {
		String html = rest.getForObject("/note/list", String.class);
		System.out.println(html);
	}
//	
//	@Test
//	public void test02_getPage() {
//		String html = rest.getForObject("/city/page/10", String.class);
//		System.out.println(html);
//	}
//	
//	@Test
//	public void test03_getCityById() {
//		String html = rest.getForObject("/city/item/100", String.class);
//		System.out.println(html);
//	}
	
	
	
	

}
