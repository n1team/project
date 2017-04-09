package com.team1.memo.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team1.domain.Memo;
import com.team1.util.memoPagination;
import com.team1.mapper.MemoMapper;

@Service
public class MemoBrowseService {
	@Autowired
	MemoMapper memoMapper;
	
//	public Map<String, Object> getPage(int pageNo,String mname){
//		Pagination paging = new Pagination();
//		paging.setTotalItem(memoMapper.memoCount());
//		paging.setPageNo(pageNo);
//		
//		List<Memo> list = null;
//		list = memoMapper.searchAll(paging,mname);
//		
//		Map<String, Object> map = new HashMap<>();
//		map.put("list", list);
//		map.put("paging", paging);
//		return map;
//	}
	public Map<String, Object> getPage(int pageNo,int mno){
		memoPagination paging = new memoPagination();
		paging.setTotalItem(memoMapper.memoCount());
		paging.setPageNo(pageNo);
		
		List<Memo> list = null;
		list = memoMapper.searchAll(paging,mno);
		
		Map<String, Object> map = new HashMap<>();
		map.put("list", list);
		map.put("paging", paging);
		return map;
	}
	
	public Memo getItem(int mno){
		Memo memo = null;
		memo = memoMapper.selectItem(mno); 
		
		return memo;
	}
}
