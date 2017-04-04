package com.team1.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.team1.domain.Book;
import com.team1.util.Pagination;

@Mapper
public interface BookMapper {

	/*
	 * 	Select
	 */
	@Select("select count(*) from book")
	int selectTotalCount();
	
	@Select("select * from book")
	List<Book> selectAll();
	
	@Select({
		"select *					",
		"  from book				",
		" order by book_code		",
		"offset #{firstItem} - 1 rows			",
		" fetch next #{itemsPerPage} rows only	"
	})
	List<Book> selectPage(Pagination paging);
	
	@Select("select * from book where book_code = #{book_code}")
	Book selectByBookcode(int bookCode);
	
	/*
	 * Insert
	 */
	int insert(Book book);
	
	/*
	 * Update
	 */
	int updateByBookcode(Book book);
	
	/*
	 * Delete
	 */
	@Delete("delete from book where book_code = #{book_code}")
	int deleteByBookcode(int bookcode);
}
