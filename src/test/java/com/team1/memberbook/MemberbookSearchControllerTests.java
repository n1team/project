package com.team1.memberbook;

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
public class MemberbookSearchControllerTests {
	
	@LocalServerPort
	int port;
	
	@Autowired
	TestRestTemplate rest;
	
	@Test
	public void test00_confirmTestRestTemplate(){
		System.out.println("port = " + port);
		System.out.println("rest = " + rest);
	}
	
	@Test
	public void test01_getList(){
		String html = rest.getForObject("/memberbook/list", String.class);
		System.out.println(html);
	}
	
}
