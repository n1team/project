package com.team1.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.team1.domain.Cosmatic;
import com.team1.util.Pagination;

@Mapper
public interface CosmaticMapper {

	
	/*
	 * select
	 */
	
	@Select("select count(*) from cosmatic")
	int selectTotalCount();
	
	@Select("select * from cosmatic")
	List<Cosmatic> selectAll();
	
	@Select("select productname from cosmatic")
	List<Cosmatic> selectName();
	
	@Select({
		"select * ",
		"  from cosmatic",
		" order by productno",
		"offset #{firstItem} -1 rows",
		" fetch next #{itemsPerPage} rows only" 
	})
	List<Cosmatic> selectPage(Pagination paging);
	
	@Select("select * from cosmatic where category=#{category}")
	List<Cosmatic> selectByCategory(String category);
	
	@Select("select * from cosmatic where productno=#{productno}")
	Cosmatic selectByProductno(int productno);
	
	
	/*
	 * insert
	 */
	int insert(Cosmatic cosmatic);
	
	/*
	 * update
	 */
	int updateByProductno(Cosmatic cosmatic);
	
	/*
	 * delete
	 */
	@Delete("delete from cosmatic where productno=#{productno}")
	int deleteByProductno(int productno);
}
