package com.team1.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.team1.domain.Book;
import com.team1.util.Pagination;

@Mapper
public interface BookMapper {

	@Select("select count(*) from book")
	int selectTotalCount();
	
	@Select("select * from book")
	List<Book> selectAll();
	List<Book> selectAllWithMemberbook();
	
	@Select({
		"select *					",
		"  from book				",
		" order by book_code		",
		"offset #{firstItem} - 1 rows			",
		" fetch next #{itemsPerPage} rows only	"
	})
	List<Book> selectPage(Pagination paging);
	List<Book> selectPageWithMemberbook(Pagination paging);
	
	@Select("select * from book where book_code = #{book_code}")
	Book selectByBookcode(int bookCode);
	Book selectByBookcodeWithMemberbook(int bookCode);
}
