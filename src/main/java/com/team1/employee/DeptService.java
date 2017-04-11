package com.team1.employee;

import com.team1.domain.Dept;
import com.team1.repository.DeptRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

@Service
public class DeptService {

	private final DeptRepository deptRepository;

	@Autowired
	public DeptService(DeptRepository deptRepository)
	{
		this.deptRepository = deptRepository;
	}

	public Page<Dept> getDepts(PageRequest page)
	{
		return deptRepository.findAll(page);
	}

	public Dept getByDeptno(int deptno)
	{
		return deptRepository.findOne(deptno);
	}

}
