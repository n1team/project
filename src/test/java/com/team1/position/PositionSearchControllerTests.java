package com.team1.position;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.context.embedded.LocalServerPort;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.context.SpringBootTest.WebEnvironment;
import org.springframework.boot.test.web.client.TestRestTemplate;
import org.springframework.test.context.junit4.SpringRunner;

@SpringBootTest(webEnvironment=WebEnvironment.RANDOM_PORT)
@RunWith(SpringRunner.class)
public class PositionSearchControllerTests {

	@LocalServerPort
	int port;
	
	@Autowired
	TestRestTemplate rest;

	@Test
	public void test00_confirmTestRestTemplate(){
		System.out.println("포트=="+port);
		System.out.println("레스트=="+rest);
	}
	
	@Test
	public void test01_getListAll(){
		String html = rest.getForObject("/position/list", String.class);
		System.out.println(html);
	}
	
	@Test
	public void test02_getPage(){
		String html = rest.getForObject("/position/page/1", String.class);
		System.out.println(html);
	}
	@Test
	public void test03_getPositionByPstno(){
		String html = rest.getForObject("/position/item/1", String.class);
		System.out.println(html);
	}
}
