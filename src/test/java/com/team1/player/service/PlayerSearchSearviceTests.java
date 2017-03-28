package com.team1.player.service;

import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.team1.domain.Player;
import com.team1.mapper.PlayerMapper;
import com.team1.mapper.PositionMapper;

@SpringBootTest
@RunWith(SpringRunner.class)
public class PlayerSearchSearviceTests {

	@Autowired
	PlayerSearchService service;
	
	@Test
	public void test00_service(){
		System.out.println("service="+service);
	}
	
	@Test
	public void test01_getListAll(){
		List<Player> ply = service.getListAll();
		for(Player p:ply)
			System.out.println(p);
			
	}
	@Test
	public void test01_getListAll_withPosition(){
		List<Player> ply = service.getListAll(true);
		for(Player p:ply)
			System.out.println(p);
	}
	@Test
	public void test02_getPage(){
		Map<String, Object> map = service.getPage(1);
		System.out.println(map.get("player"));
		System.out.println(map.get("paging"));
	}
	
	@Test
	public void test02_getPage_withPosition(){
		Map<String, Object> map = service.getPage(1, true);
		System.out.println(map.get("player"));
		System.out.println(map.get("paging"));
		
	}
	@Test
	public void test03_getPlayerByPlayerno(){
		Player p = service.getPlayerByPlayerno(7);
		System.out.println(p);
	}
	
	@Test
	public void test03_getPlayerByPlayerno_withPosition(){
		Player p = service.getPlayerByPlayerno(2, true);
		System.out.println(p);
	}
	
	
	
}
