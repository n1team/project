package com.team1.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.team1.domain.Position;
import com.team1.util.Pagination;

@SpringBootTest
@RunWith(SpringRunner.class)
public class PositionMapperTests {

	@Autowired
	PlayerMapper plyMapper;
	
	@Autowired
	PositionMapper posMapper;
	
	@Test
	public void test00_confirm_plymapper(){
		System.out.println("plyMapper="+plyMapper);
	}
	
	@Test
	public void test00_confirm_posmapper(){
		System.out.println("posMapper="+posMapper);
	}
	
	@Test
	public void test01_selectAll(){
		List<Position> pos = posMapper.selectAll();
		for(Position p:pos)
			System.out.println(p);
	}
	
	@Test
	public void test01_selectAllWithPlayer(){
		List<Position> pos = posMapper.selectAllWithPlayer();
		for(Position p:pos)
			System.out.println(p);
	}
	
	@Test
	public void test02_selectPage(){
		Pagination paging = new Pagination();
		paging.setTotalItem(posMapper.selectTotalCount());
		paging.setPageNo(1);
		List<Position> pos = posMapper.selectPage(paging);
		for(Position p:pos)
			System.out.println(p);
	}
	@Test
	public void test02_selectPageWithPlayer(){
		Pagination paging = new Pagination();
		paging.setTotalItem(posMapper.selectTotalCount());
		paging.setPageNo(1);
		List<Position> pos = posMapper.selectAll();
		for(Position p:pos)
			System.out.println(p);
	}

	@Test
	public void test03_selectByPstno(){
		Position pos = posMapper.selectByPstno(10);
		System.out.println("선수는="+pos);
	}
	@Test
	public void test03_selectByPstnoWithPlayer(){
		Position pos = posMapper.selectByPstnoWithPlayer(30);
		System.out.println(pos);
	}
	
	@Test
	public void test04_insert(){
		Position pos = new Position();
		pos.setPstno(60);
		pos.setPstname("D");
		
		int pnt = posMapper.insert(pos);
		System.out.println(posMapper.selectByPstno(pos.getPstno()));
	}
	
	@Test
	public void test05_updateByPstno(){
		Position pos = new Position();
		pos.setPstno(70);
		pos.setPstname("COACH");
		
		
		int pnt=posMapper.insert(pos);
		System.out.println(posMapper.selectByPstno(pos.getPstno()));
	}
	
	@Test
	public void test06_deleteByPstno(){
		int pstno = 70;
		int pnt = posMapper.deleteByPstno(pstno);
		System.out.println("삭제갯수="+pnt);
	}
	
	
	
}
