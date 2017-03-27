package com.team1.cosmatic.service;

import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.team1.cosmatic.service.CosmaticSearchService;
import com.team1.domain.Cosmatic;

@RunWith(SpringRunner.class)
@SpringBootTest
public class CosmaticSearchServiceTests {
	
	@Autowired
	CosmaticSearchService service;
	
	@Test
	public void test00_confirmService() {
		System.out.println("service = " + service);
	}
	
	@Test
	public void test01_getListAll() {
		List<Cosmatic> list = service.getListAll();
		for(Cosmatic cos : list)
			System.out.println(cos);
	}
	
	@Test
	public void test02_getpage() {
		Map<String, Object> map = service.getPage(1);
		System.out.println(map.get("cosmatics"));
		System.out.println(map.get("paging"));
	}
	
	@Test
	public void test03_getCosmaticByCategory() {
		List<Cosmatic> list = service.getCosmaticByCategory("LIP");
		for(Cosmatic cos : list)
			System.out.println(cos);
	}
	
	@Test
	public void test04_getCosmaticByProductno() {
		Cosmatic cos = service.getCosmaticByProductno(10001);
		System.out.println("cosmatic = " + cos);
	}
}
