package com.team1.mapper;

import com.team1.domain.Country;
import com.team1.util.Pagination;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface CountryMapper {

	@Select("select count(*) from country")
	int selectTotalCount();
	
	@Select("select * from country where continent='Asia'")
	List<Country> selectAll();
	List<Country> selectAllWithCity();
	
	@Select({
		"select *                             ",
		"  from country                       ",
		" order by name                       ",
		"offset #{firstItem} - 1 rows         ",
		" fetch next #{itemsPerPage} rows only"
	})
	List<Country> selectPage(Pagination paging);
	List<Country> selectPageWithCity(Pagination paging);
	
	@Select("select * from country where code=#{code}")
	Country selectByCode(String code);
	Country selectByCodeWithCity(String code);
	
	int insert(Country country);
	
	int updateByCode(Country country);
	
	@Delete("delete from country where code=#{code}")
	int deleteByCode(String code);
	
}
