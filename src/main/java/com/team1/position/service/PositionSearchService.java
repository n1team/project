package com.team1.position.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team1.domain.Position;
import com.team1.mapper.PositionMapper;
import com.team1.util.Pagination;

@Service
public class PositionSearchService {

	static Log log = LogFactory.getLog(PositionSearchService.class);
	
	@Autowired
	PositionMapper posMapper;
	
	public List<Position> getListAll(){
		log.info("getListAll()");
		return getListAll(false);
	}
	
	public List<Position> getListAll(boolean withPlayer){
		log.info("getListAll("+withPlayer+")");
		List<Position> pos = null;
		if(withPlayer)
			pos = posMapper.selectAllWithPlayer();
		else
			pos = posMapper.selectAll();
		return pos;
	}
	
	
	public Map<String, Object> getPage(int pageNo){
		return getPage(pageNo, false);
		
	}
	public Map<String, Object> getPage(int pageNo, boolean withPlayer){
		Pagination paging = new Pagination();
		paging.setTotalItem(posMapper.selectTotalCount());
		paging.setPageNo(pageNo);
		List<Position> pos = null;
		if(withPlayer)
			pos = posMapper.selectPageWithPlayer(paging);
		else
			pos = posMapper.selectPage(paging);
		Map<String, Object> map = new HashMap<>();
		map.put("position", pos);
		map.put("paging", paging);		
		return map;
	}
	
	
	public Position getPositionByPstno(int pstno){
		log.info("getPositionByPstno("+pstno+")");
		return getPositionByPstno(pstno, false);
	}
	
	public Position getPositionByPstno(int pstno, boolean withPlayer){
		Position pos = null;
		if(withPlayer)
			pos = posMapper.selectByPstnoWithPlayer(pstno);
		else
			pos = posMapper.selectByPstno(pstno);
		return pos;
	}
	
}
