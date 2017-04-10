package com.team1.cosmetic.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team1.domain.Cosmetic;
import com.team1.mapper.CosmeticMapper;
import com.team1.util.Pagination;

@Service
public class CosmeticSearchService {

	static Log log = LogFactory.getLog(CosmeticSearchService.class);
	
	@Autowired
	CosmeticMapper cosmaticmapper;
	
	public List<Cosmetic> getListName() {
		log.info("getListName()");
		List<Cosmetic> list = cosmaticmapper.selectName();
		return list;
	}
	
	public List<Cosmetic> getListAll() {
		log.info("getListAll()");
		List<Cosmetic> list = cosmaticmapper.selectAll();
		return list;
	}
	
	
	
	public Map<String, Object> getPage(int pageNo) {
		
		Pagination paging = new Pagination();
		paging.setTotalItem(cosmaticmapper.selectTotalCount());
		paging.setPageNo(pageNo);
		
		List<Cosmetic> list = cosmaticmapper.selectPage(paging);
		
		Map<String, Object> map = new HashMap<>();
		map.put("cosmatics", list);
		map.put("paging", paging);
		
		return map;
	}
	
	public List<Cosmetic> getCosmaticByCategory(String category) {
		log.info("getCosmaticByCategory("+category+")");
		
		List<Cosmetic> list = cosmaticmapper.selectByCategory(category);
		
		return list;
	}
	
	public Cosmetic getCosmaticByProductno(int productno) {
		log.info("getCosmaticByProductno("+productno+")");
		
		Cosmetic cos = cosmaticmapper.selectByProductno(productno);
		
		return cos;
	}
	
	
}
