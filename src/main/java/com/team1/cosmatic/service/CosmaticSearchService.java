package com.team1.cosmatic.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team1.domain.Cosmatic;
import com.team1.mapper.CosmaticMapper;
import com.team1.util.Pagination;

@Service
public class CosmaticSearchService {

	static Log log = LogFactory.getLog(CosmaticSearchService.class);
	
	@Autowired
	CosmaticMapper cosmaticmapper;
	
	public List<Cosmatic> getListName() {
		log.info("getListName()");
		List<Cosmatic> list = cosmaticmapper.selectName();
		return list;
	}
	
	public List<Cosmatic> getListAll() {
		log.info("getListAll()");
		List<Cosmatic> list = cosmaticmapper.selectAll();
		return list;
	}
	
	
	
	public Map<String, Object> getPage(int pageNo) {
		
		Pagination paging = new Pagination();
		paging.setTotalItem(cosmaticmapper.selectTotalCount());
		paging.setPageNo(pageNo);
		
		List<Cosmatic> list = cosmaticmapper.selectPage(paging);
		
		Map<String, Object> map = new HashMap<>();
		map.put("cosmatics", list);
		map.put("paging", paging);
		
		return map;
	}
	
	public List<Cosmatic> getCosmaticByCategory(String category) {
		log.info("getCosmaticByCategory("+category+")");
		
		List<Cosmatic> list = cosmaticmapper.selectByCategory(category);
		
		return list;
	}
	
	public Cosmatic getCosmaticByProductno(int productno) {
		log.info("getCosmaticByProductno("+productno+")");
		
		Cosmatic cos = cosmaticmapper.selectByProductno(productno);
		
		return cos;
	}
	
	
}
