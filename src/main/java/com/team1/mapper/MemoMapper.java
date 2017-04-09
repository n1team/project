package com.team1.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.team1.domain.Memo;
import com.team1.util.memoPagination;

@Mapper
public interface MemoMapper {
	@Select("select count(*) from memo")
	int memoCount();
	
	@Select({
		"select *                ",
		"  from memo             ",
		" order by mno desc         ",
		"offset #{firstItem} - 1 rows   ",
		" fetch next #{itemsPerPage} rows only"
	})
	List<Memo> selectPage(memoPagination paging);
	
	@Select("select * from memo")
	List<Memo> selectAll();
	
	@Select("select * from memo where mno=#{mno}")
	Memo selectItem(int mno);
	
	int insert(Memo memo);
	
	int updateByMno(Memo memo);
	
	@Delete("delete from memo where mno=#{mno}")
	int deleteByMno(int mno);
	//////////////////////////////////////////////////////////////////////
//	@Select({
//		"select * from memo where mname like #{mname}",
//		" order by mno desc         ",
//		" offset #{firstItem} - 1 rows   ",
//		" fetch next #{itemsPerPage} rows only"		
//	})
//	List<Memo> searchAll(Pagination paging, String mname);
	
	@Select({
		"select * 						",
		"from memo 						",
		"where mno like #{mno}		",
		" order by mno desc        		",
		" offset #{firstItem} - 1 rows  ",
		" fetch next #{itemsPerPage} rows only"		
	})
	List<Memo> searchAll(memoPagination paging, int mno);
	
//	List<Memo> searchAll(Pagination paging, String mname);
	//////////////////////////////////////////////////////////////////////
}
