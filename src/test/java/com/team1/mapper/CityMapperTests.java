package com.team1.mapper;


import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.team1.domain.Note;
import com.team1.mapper.NoteMapper;


@RunWith(SpringRunner.class)
@SpringBootTest
public class CityMapperTests {
	
	@Autowired
	NoteMapper noteMapper;
	
	@Test
	public void test00_confirmCityMapper() {
		System.out.println("memoapper=" + noteMapper);
		System.out.println("memoapper2=" + noteMapper.selectTotalCount());
	}

	@Test
	public void selectAll() {
		List<Note> list = noteMapper.selectAll();
		
		for (Note c : list)
			System.out.println(c);
	}
	

}








