package com.team1.persistence;

import com.team1.domain.City;
import com.team1.util.Pagination;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface CityMapper {

	int selectTotalCount();
	List<City> selectAll();
	List<City> selectAllWithCountry();
	
	@Select({
		"select *                ",
		"  from city             ",
		" order by id            ",
		"offset #{firstItem} - 1 rows   ",
		" fetch next #{itemsPerPage} rows only"
	})
	List<City> selectPage(Pagination paging);
	List<City> selectPageWithCountry(Pagination paging);
	
	@Select("select * from city where id=#{id}")
	City selectById(int id);
	City selectByIdWithCountry(int id);
	
	/*
	 * Insert
	 */
	int insert(City city);
	/*
	 * Update
	 */
	int updateById(City city);
	
	/*
	 * Delete
	 */
	@Delete("delete from city where id=#{id}")
	int deleteById(int id);
	
	
}
