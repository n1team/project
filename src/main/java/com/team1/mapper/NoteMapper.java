package com.team1.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.team1.domain.Note;


@Mapper
public interface NoteMapper {

	
	@Select("select count(*) from note")
	int selectTotalCount();
	

	List<Note> selectAll(Map<String, Object> param);
	
	
	Note selectAllNo(int noteNo);	
	
	int insert(Map<String, Object> param) ;
	
	int update(Note note);
	
	int delete(int noteNo);
	
}
