package com.team1.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.team1.domain.Note;
import com.team1.util.NotePagination;


@Mapper
public interface NoteMapper {

	
	@Select("select count(*) from note")
	int selectTotalCount();
	

	List<Note> selectAll(NotePagination paging);	
	
	Note selectAllNo(int noteNo);	
	
	int insert(Note note);
	
	int update(Note note);
	
	int delete(int noteNo);
	
}
