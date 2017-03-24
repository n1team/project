package com.team1.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.team1.domain.Memberbook;
import com.team1.util.Pagination;

@Mapper
public interface MemberbookMapper {
	/*
	 * Select
	 */
	@Select("select count(*) from memberBook")
	int selectTotalCount();
	
	@Select("select * from memberBook")
	List<Memberbook> selectAll();
	List<Memberbook> selectAllWithBook();
	
	@Select({
		"select *							",
		"  from memberBook					",
		" order by member_code				",
		"offset #{firstItem}-1 rows			",
		" fetch next #{itemsPerPage} rows only"
		})
	List<Memberbook> selectPage(Pagination paging);
	List<Memberbook> selectPageWithBook(Pagination paging);
	
	@Select("select * from memberBook where member_code=#{member_code}")
	Memberbook selectBymemberCode(int memberCode);
	Memberbook selectBymemberCodeWithBook(int memberCode);
	
	/*
	 * Insert
	 */
	int insert(Memberbook memberbook);
	
	/*
	 * Update
	 */
	int updateByMemberCode(Memberbook memberbook);
	
	/*
	 * Delete
	 */
	@Delete("delete from memberBook where member_code=#{member_code}")
	int deleteByMemberCode(int memberCode);
}
