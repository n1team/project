package com.team1.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.team1.domain.Cosmatic;
import com.team1.mapper.CosmaticMapper;
import com.team1.util.Pagination;

@RunWith(SpringRunner.class)
@SpringBootTest
public class CosmaticMapeerTests {

	@Autowired
	CosmaticMapper cosmapper;
	
	@Test
	public void test00_confirmCosmaticMapper() {
		System.out.println("cosmaticmapper = " + cosmapper);
	}
	
	@Test
	public void test01_selectAll() {
		List<Cosmatic> list = cosmapper.selectAll();
		
			for (Cosmatic cos : list)
				System.out.println(cos);
	}
	
	@Test
	public void test01_selectName() {
		List<Cosmatic> list = cosmapper.selectName();
		
			for (Cosmatic cos : list)
				System.out.println(cos);
	}
	
	@Test
	public void test02_selectPage() {
		Pagination paging = new Pagination();
		
		paging.setTotalItem(cosmapper.selectTotalCount());
		paging.setPageNo(10);
		
		List<Cosmatic> list = cosmapper.selectPage(paging);
		
		for (Cosmatic cos : list)
			System.out.println(cos);
	}
	
	@Test
	public void test03_selectByCategory() {
		List<Cosmatic> list = cosmapper.selectByCategory("LIP");
		for (Cosmatic cos : list)
			System.out.println(cos);
		
	}
	
	@Test
	public void test03_selectByProductno() {
		Cosmatic cosmatic = cosmapper.selectByProductno(10001);
		System.out.println("cosmatic = " + cosmatic);
	}
	
	@Test
	public void test04_insert() {
		Cosmatic cosmatic = new Cosmatic();
		cosmatic.setProductno(10050);
		cosmatic.setProductname("sfsdfdssd");
		
		int cos = cosmapper.insert(cosmatic);
		System.out.println(cosmapper.selectAll());
	}
	
	@Test
	public void test05_updateByProductno() {
		Cosmatic cosmatic = cosmapper.selectByProductno(10026);
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
