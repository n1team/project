package com.team1.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.team1.domain.Player;
import com.team1.domain.Position;
import com.team1.util.Pagination;

@Mapper
public interface PositionMapper {

	@Select("select count(*) from position")
	int selectTotalCount();
	
	@Select("select * from position")
	List<Position> selectAll();
	List<Position> selectAllWithPlayer();
	
	@Select({
		"select *",
		"from position",
		"order by pstno",
		"offset #{firstItem}-1 rows",
		"fetch next #{itemsPerPage} rows only"
	})
	List<Position> selectPage(Pagination paging);
	List<Position> selectPageWithPlayer(Pagination paging);
	
	@Select("select * from position where pstno=#{pstno}")
	Position selectByPstno(int pstno);	
	Position selectByPstnoWithPlayer(int pstno);
	
	
	int insert(Position position);
	int updateByPstno(Position position);
	
	@Delete("delete from position where pstno=#{pstno}")
	int deleteByPstno(int pstno);
	
}
