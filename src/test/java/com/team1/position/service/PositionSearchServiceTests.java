package com.team1.position.service;

import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.team1.domain.Position;
import com.team1.mapper.PlayerMapper;
import com.team1.mapper.PositionMapper;

@SpringBootTest
@RunWith(SpringRunner.class)
public class PositionSearchServiceTests {

	@Autowired
	PositionSearchService service;
	
	@Test
	public void test00_service(){
		System.out.println("service=="+service);
	}
	
	@Test
	public void test01_getListAll(){
		List<Position> pos = service.getListAll();
		for(Position p:pos)
			System.out.println(p);
	}
	@Test
	public void test01_getListAll_WithPlayer(){
		List<Position> pos = service.getListAll(true);
		for(Position p:pos)
			System.out.println(p);
	}
	@Test
	public void test02_getPage(){
		Map<String, Object> map = service.getPage(1);
		System.out.println(map.get("position"));
		System.out.println(map.get("paging"));
	}
	@Test
	public void test02_getPage_withPlayer(){
		Map<String, Object> map = service.getPage(1, true);
		System.out.println(map.get("position"));
		System.out.println(map.get("paging"));
		
	}
	@Test
	public void test03_getPositionByPstno(){
		Position p = service.getPositionByPstno(30);
		System.out.println(p);
	}
	@Test
	public void test03_getPositionByPstno_withPlayer(){
		Position p = service.getPositionByPstno(10, true);
		System.out.println(p);
	}
	
	
}
