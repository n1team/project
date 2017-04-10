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
	CosmeticMapper cosmeticmapper;
	
	public List<Cosmetic> getListName() {
		log.info("getListName()");
		List<Cosmetic> list = cosmeticmapper.selectName();
		return list;
	}
	
	public List<Cosmetic> getListAll() {
		log.info("getListAll()");
		List<Cosmetic> list = cosmeticmapper.selectAll();
		return list;
	}
	
	
	
	public Map<String, Object> getPage(int pageNo) {
		
		Pagination paging = new Pagination();
		paging.setTotalItem(cosmeticmapper.selectTotalCount());
		paging.setPageNo(pageNo);
		
		List<Cosmetic> list = cosmeticmapper.selectPage(paging);
		
		Map<String, Object> map = new HashMap<>();
		map.put("cosmetics", list);
		map.put("paging", paging);
		
		return map;
	}
	
	public List<Cosmetic> getCosmeticByCategory(String category) {
		log.info("getcosmeticByCategory("+category+")");
		
		List<Cosmetic> list = cosmeticmapper.selectByCategory(category);
		
		return list;
	}
	
	public Cosmetic getCosmeticByProductno(int productno) {
		log.info("getcosmeticByProductno("+productno+")");
		
		Cosmetic cos = cosmeticmapper.selectByProductno(productno);
		
		return cos;
	}
	
	
}
