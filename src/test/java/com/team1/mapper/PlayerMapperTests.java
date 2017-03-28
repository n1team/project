package com.team1.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.team1.domain.Player;
import com.team1.util.Pagination;

@SpringBootTest
@RunWith(SpringRunner.class)
public class PlayerMapperTests {

	
	@Autowired
	PlayerMapper plyMapper; 
	
	@Autowired
	PositionMapper posMapper;
	
	@Test
	public void test00_confirm_mapper(){
		System.out.println("plyMapper="+plyMapper);
	}
	
	@Test
	public void test00_confirm_posMapper(){
		System.out.println("pos="+posMapper);
	}
	
	@Test
	public void test01_selectAll(){
		List<Player> ply = plyMapper.selectAll();
		for (Player p:ply)
			System.out.println(p);
	}
	
	@Test
	public void test01_selectAllWithPosition(){
		List<Player> ply = plyMapper.selectAllWithPosition();
		for(Player p:ply)
			System.out.println("allwith="+p);
	}
	
	@Test
	public void test02_selectPage(){
		Pagination paging = new Pagination();
		paging.setTotalItem(plyMapper.selectTotalCount());
		paging.setPageNo(2);
		
		List<Player> ply = plyMapper.selectPage(paging);
		for (Player p:ply)
			System.out.println(p);
	}
	
	@Test
	public void test02_selectPageWithPosition(){
		Pagination paging = new Pagination();
		paging.setTotalItem(plyMapper.selectTotalCount());
		paging.setPageNo(2);
		List<Player> ply = plyMapper.selectPageWithPosition(paging);
		for(Player p:ply)
			System.out.println("pageWith="+p);
		
	}
	@Test
	public void test03_selectByPlayerno(){
		Player p = plyMapper.selectByPlayerno(9);
		System.out.println("선수는="+p);
	}
	
	@Test
	public void test03_selectByPlayernoWithPosition(){
	Player ply = plyMapper.selectByPlayernoWithPosition(10);
	System.out.println(ply);
	}
	
	@Test
	public void test04_insert(){
		Player ply = new Player();
		ply.setPname("KIM WON JUNG");
		ply.setPstno(10);
		int pnt = plyMapper.insert(ply);
		System.out.println(plyMapper.selectByPlayerno(ply.getPlayerno()));
	}
	
	@Test
	public void test05_updateByPlayerno(){
		Player ply = new Player();
		ply.setPlayerno(21);
		ply.setPname("NA JONG DUCK");
		ply.setPstno(20);
		
		int pnt = plyMapper.insert(ply);
		System.out.println(plyMapper.selectByPlayerno(ply.getPlayerno()));
		
	}
	
	@Test
	public void test06_deleteByPlayerno(){
		int playerno = 21;
		int pnt = plyMapper.deleteByPlayerno(playerno);
		System.out.println("pnt="+pnt);
	}
}
