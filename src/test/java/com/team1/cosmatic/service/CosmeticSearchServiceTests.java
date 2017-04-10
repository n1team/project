package com.team1.cosmatic.service;

import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.team1.cosmetic.service.CosmeticSearchService;
import com.team1.domain.Cosmetic;

@RunWith(SpringRunner.class)
@SpringBootTest
public class CosmeticSearchServiceTests {
	
	@Autowired
	CosmeticSearchService service;
	
	@Test
	public void test00_confirmService() {
		System.out.println("service = " + service);
	}
	
	@Test
	public void test01_getListAll() {
		List<Cosmetic> list = service.getListAll();
		for(Cosmetic cos : list)
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
		List<Cosmetic> list = service.getCosmaticByCategory("LIP");
		for(Cosmetic cos : list)
			System.out.println(cos);
	}
	
	@Test
	public void test04_getCosmaticByProductno() {
		Cosmetic cos = service.getCosmaticByProductno(10001);
		System.out.println("cosmatic = " + cos);
	}
}
