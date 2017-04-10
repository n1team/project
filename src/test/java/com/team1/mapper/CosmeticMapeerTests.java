package com.team1.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.team1.domain.Cosmetic;
import com.team1.util.Pagination;

@RunWith(SpringRunner.class)
@SpringBootTest
public class CosmeticMapeerTests {

	@Autowired
	CosmeticMapper cosmapper;
	
	@Test
	public void test00_confirmCosmaticMapper() {
		System.out.println("cosmaticmapper = " + cosmapper);
	}
	
	@Test
	public void test01_selectAll() {
		List<Cosmetic> list = cosmapper.selectAll();
		
			for (Cosmetic cos : list)
				System.out.println(cos);
	}
	
	@Test
	public void test01_selectName() {
		List<Cosmetic> list = cosmapper.selectName();
		
			for (Cosmetic cos : list)
				System.out.println(cos);
	}
	
	@Test
	public void test02_selectPage() {
		Pagination paging = new Pagination();
		
		paging.setTotalItem(cosmapper.selectTotalCount());
		paging.setPageNo(10);
		
		List<Cosmetic> list = cosmapper.selectPage(paging);
		
		for (Cosmetic cos : list)
			System.out.println(cos);
	}
	
	@Test
	public void test03_selectByCategory() {
		List<Cosmetic> list = cosmapper.selectByCategory("LIP");
		for (Cosmetic cos : list)
			System.out.println(cos);
		
	}
	
	@Test
	public void test03_selectByProductno() {
		Cosmetic cosmatic = cosmapper.selectByProductno(10001);
		System.out.println("cosmatic = " + cosmatic);
	}
	
	@Test
	public void test04_insert() {
		Cosmetic cosmatic = new Cosmetic();
		cosmatic.setProductno(10050);
		cosmatic.setProductname("sfsdfdssd");
		
		int cos = cosmapper.insert(cosmatic);
		System.out.println(cosmapper.selectAll());
	}
	
	@Test
	public void test05_updateByProductno() {
		Cosmetic cosmatic = cosmapper.selectByProductno(10026);
//		cosmatic.setProductno(10050);
		cosmatic.setProductname("sfsdfdssd");
		
		
		int cos = cosmapper.updateByProductno(cosmatic);
		System.out.println(cosmapper.selectByProductno(cosmatic.getProductno()));
	}
	
	@Test
	public void test06_deleteById() {
		int productno = 10003;
		int rtn = cosmapper.deleteByProductno(productno);
		System.out.println("rtn = " + rtn);
	}
}
