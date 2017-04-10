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
	
	@Select("select count(*) from cosmatic")
	int selectTotalCount();
	
	@Select("select * from cosmatic")
	List<Cosmetic> selectAll();
	
	@Select("select productname from cosmatic")
	List<Cosmetic> selectName();
	
	@Select({
		"select * ",
		"  from cosmatic",
		" order by productno",
		"offset #{firstItem} -1 rows",
		" fetch next #{itemsPerPage} rows only" 
	})
	List<Cosmetic> selectPage(Pagination paging);
	
	@Select("select * from cosmatic where category=#{category}")
	List<Cosmetic> selectByCategory(String category);
	
	@Select("select * from cosmatic where productno=#{productno}")
	Cosmetic selectByProductno(int productno);
	
	
	/*
	 * insert
	 */
	int insert(Cosmetic cosmatic);
	
	/*
	 * update
	 */
	int updateByProductno(Cosmetic cosmatic);
	
	/*
	 * delete
	 */
	@Delete("delete from cosmatic where productno=#{productno}")
	int deleteByProductno(int productno);
}
