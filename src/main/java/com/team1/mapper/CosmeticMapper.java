package com.team1.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.team1.domain.Cosmetic;
import com.team1.util.Pagination;

@Mapper
public interface CosmeticMapper {

	
	/*
	 * select
	 */
	
	@Select("select count(*) from cosmetic")
	int selectTotalCount();
	
	@Select("select * from cosmetic")
	List<Cosmetic> selectAll();
	
	@Select("select productname from cosmetic")
	List<Cosmetic> selectName();
	
	@Select({
		"select * ",
		"  from cosmetic",
		" order by productno",
		"offset #{firstItem} -1 rows",
		" fetch next #{itemsPerPage} rows only" 
	})
	List<Cosmetic> selectPage(Pagination paging);
	
	@Select("select * from cosmetic where category=#{category}")
	List<Cosmetic> selectByCategory(String category);
	
	@Select("select * from cosmetic where productno=#{productno}")
	Cosmetic selectByProductno(int productno);
	
	
	/*
	 * insert
	 */
	int insert(Cosmetic cosmetic);
	
	/*
	 * update
	 */
	int updateByProductno(Cosmetic cosmetic);
	
	/*
	 * delete
	 */
	@Delete("delete from cosmetic where productno=#{productno}")
	int deleteByProductno(int productno);
}
