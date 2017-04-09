package com.team1.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.team1.domain.Player;
import com.team1.domain.Position;
import com.team1.util.Pagination;

@SpringBootTest
@RunWith(SpringRunner.class)
public class PositionMapperTests {

	@Autowired
	PositionMapper posMapper;
	
	@Autowired
	PlayerMapper plyMapper;
	
	@Test
	public void test00_posMapper(){
		System.out.println("pos=="+posMapper);
	}
	@Test
	public void test00_plyMapper(){
		System.out.println("ply=="+plyMapper);
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
		for (Position p:pos)
			System.out.println(p);
	}
	
	@Test
	public void test02_selectPageWithPlayer(){
		Pagination paging = new Pagination();
		paging.setTotalItem(posMapper.selectTotalCount());
		paging.setPageNo(1);
		
		List<Position> pos = posMapper.selectPageWithPlayer(paging);
		for (Position p:pos)
			System.out.println(p);
	}
	
	@Test
	public void test03_selectByPstno(){
		Position p = posMapper.selectByPstno(20);
		System.out.println("포지션은=="+p);
	}
	@Test
	public void test03_selectByPstnoWithPlayer(){
		Position pos=posMapper.selectByPstnoWithPlayer(20);
		System.out.println(pos);
	}
	
	@Test
	public void test04_inset(){
		Position pos = new Position();
		pos.setPstno(64);
		pos.setPstname("CHOI");
		int pny = posMapper.insert(pos);
		System.out.println(posMapper.selectByPstno(pos.getPstno()));
		
		
	}
	@Test
	public void test05_update(){
		Position pos = new Position();
		pos.setPstno(64);
		pos.setPstname("KIM");
		int pny = posMapper.updateByPstno(pos);
		System.out.println(posMapper.selectByPstno(pos.getPstno()));
	}
	@Test
	public void test06_delete(){
		int pstno=64;
		int pnt = posMapper.deleteByPstno(pstno);
		System.out.println("삭제갯수"+pnt);
	}
	
	
}
