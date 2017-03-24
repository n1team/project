package com.team1.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.team1.domain.Memberbook;
import com.team1.util.Pagination;

@RunWith(SpringRunner.class)
@SpringBootTest
public class MemberbookMapperTests {
	@Autowired
	MemberbookMapper memberbookMapper;
	
	@Test
	public void test00_cinfirmMapper(){
		System.out.println("memberbookMapper = " + memberbookMapper);
	}
	
	@Test
	public void test00_selectTotalCount(){
		System.out.println("totalCount = " + memberbookMapper.selectTotalCount());
	}
	
	@Test
	public void test01_selectAll(){
		List<Memberbook> list = memberbookMapper.selectAll();
		
		for(Memberbook bs : list)
			System.out.println(bs);
	}
	
	@Test
	public void test01_selectAllWithBook(){
		List<Memberbook> list = memberbookMapper.selectAllWithBook();
		
		for(Memberbook bs : list)
			System.out.println(bs);
	}
	
	@Test
	public void test02_selectPage(){
		Pagination paging = new Pagination();
		paging.setTotalItem(memberbookMapper.selectTotalCount());
		paging.setPageNo(1);
		
		List<Memberbook> list = memberbookMapper.selectPage(paging);
		for(Memberbook bs : list)
			System.out.println(bs);
	}
	
	@Test
	public void test02_selectPageWithBook(){
		Pagination paging = new Pagination();
		paging.setTotalItem(memberbookMapper.selectTotalCount());
		paging.setPageNo(1);
		
		List<Memberbook> list = memberbookMapper.selectPageWithBook(paging);
		for(Memberbook bs : list)
			System.out.println(bs);
	}
	
	@Test
	public void test03_selectBymemberCode(){
		Memberbook memberbook = memberbookMapper.selectBymemberCode(201601320);
		
		System.out.println("memberbook = " + memberbook);
	}
	
	@Test
	public void test03_selectBymemberCodeWithBook(){
		Memberbook memberbook = memberbookMapper.selectBymemberCodeWithBook(201601320);
		
		System.out.println("memberbook = " + memberbook);
	}
}
