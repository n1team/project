package com.team1.persistence;

import com.team1.mapper.CityMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@SpringBootTest
@RunWith(SpringRunner.class)
public class CityMapperTests {

	@Autowired
	private CityMapper mapper;

	@Test
	public void selectTotalCount()
	{
		System.out.format("%d records are in the table.\n", mapper.selectTotalCount());
	}

	@Test
	public void selectAll()
	{
		mapper.selectAll().forEach(System.out::println);
	}

}
