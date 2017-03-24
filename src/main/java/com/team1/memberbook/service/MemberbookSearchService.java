package com.team1.memberbook.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team1.domain.Memberbook;
import com.team1.mapper.MemberbookMapper;
import com.team1.util.Pagination;

@Service
public class MemberbookSearchService {

	@Autowired
	MemberbookMapper memberbookMapper;
	
	public List<Memberbook> getListAll() {
		return getListAll(false);
	}

	public List<Memberbook> getListAll(boolean withBook) {
		List<Memberbook> list = null;
		if (withBook)
			list = memberbookMapper.selectAllWithBook();
		else
			list = memberbookMapper.selectAll();

		return list;
	}

	public Map<String, Object> getPage(int pageNo) {
		return getPage(pageNo, false);
	}

	public Map<String, Object> getPage(int pageNo, boolean withBook) {
		Pagination paging = new Pagination();
		paging.setTotalItem(memberbookMapper.selectTotalCount());
		paging.setPageNo(pageNo);

		List<Memberbook> list = null;
		if (withBook)
			list = memberbookMapper.selectPageWithBook(paging);
		else
			list = memberbookMapper.selectPage(paging);

		Map<String, Object> map = new HashMap<>();
		map.put("members", list);
		map.put("paging", paging);

		return map;
	}

	public Memberbook getBookstateByMembercode(int memberCode) {
		return getBookstateByMembercode(memberCode, false);
	}

	public Memberbook getBookstateByMembercode(int memberCode, boolean withBook) {
		Memberbook memberbook = null;
		if (withBook)
			memberbook = memberbookMapper.selectBymemberCodeWithBook(memberCode);
		else
			memberbook = memberbookMapper.selectBymemberCode(memberCode);

		return memberbook;
	}
}
