package com.team1.memberbook.service;

import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.team1.domain.Memberbook;

@RunWith(SpringRunner.class)
@SpringBootTest
public class MemberbookSearchServiceTests {
	
	@Autowired
	MemberbookSearchService memberbookSearchService;
	
	@Test
	public void test00_confirmService(){
		System.out.println("memberbookSearchService = " + memberbookSearchService);
	}
	
	@Test
	public void test01_getListAll(){
		List<Memberbook> list = memberbookSearchService.getListAll();
		for(Memberbook mb : list)
			System.out.println(mb);
	}
	
	@Test
	public void test01_getListAll_withBook(){
		List<Memberbook> list = memberbookSearchService.getListAll(true);
		for(Memberbook mb : list)
			System.out.println(mb);
	}
	
	@Test
	public void test02_getPage(){
		Map<String, Object> map = memberbookSearchService.getPage(1);
		System.out.println(map.get("members"));
		System.out.println(map.get("paging"));
	}
	
	@Test
	public void test02_getPage_withBook(){
		Map<String, Object> map = memberbookSearchService.getPage(1, true);
		System.out.println(map.get("members"));
		System.out.println(map.get("paging"));
	}
	
	@Test
	public void test03_getBookstateByMembercode(){
		Memberbook bs = memberbookSearchService.getMemberbookByMembercode(201700056);
		System.out.println(bs);
	}
	
	@Test
	public void test03_getBookstateByMembercode_withBook(){
		Memberbook bs = memberbookSearchService.getMemberbookByMembercode(201700056, true);
		System.out.println(bs);
}
}
