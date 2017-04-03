package com.team1.note.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.util.Pagination;
import com.team1.domain.Note;
import com.team1.mapper.NoteMapper;


@Service
public class NoteSearchService {
	static Log log = LogFactory.getLog(NoteSearchService.class);
	
	@Autowired
	NoteMapper noteMapper;
	
//	public List<Note> getListAll() {
//		log.info("getListAllrrr()");
//		List<Note> list = noteMapper.selectAll();
//		return list;
//	}
	
	
	public Map<String, Object> getPage(int pageNo) {
		Pagination paging = new Pagination();
		paging.setTotalItem(noteMapper.selectTotalCount());
		paging.setPageNo(pageNo);

		List<Note> list = noteMapper.selectAll(paging);
		log.info("44444444444444444444444("+list+")");	
		Map<String, Object> map = new HashMap<>();
		map.put("notes", list);
		map.put("paging", paging);
		
		return map;
	}

	
	
	public Note getListAllNo(int noteNo) {
		log.info("getListAllnoteNo("+noteNo+")");
		Note note = noteMapper.selectAllNo(noteNo);
		return note;
	}
	
	public Note getNoteBynoteNo(int noteNo) {
		log.info("getCityById(" + noteNo + ")");
		Note note = noteMapper.selectAllNo(noteNo);
		return note;
	}

	
	
	
	
	


}
