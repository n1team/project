package com.team1.employee;

import com.team1.domain.Dept;
import com.team1.repository.DeptRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

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

	public void insert(Dept dept, BindingResult errors)
	{
		if (deptRepository.findOne(dept.getDeptno()) != null)
		{
			errors.reject("InvalidInsertRequest", "레코드가 이미 존재합니다.");
			return;
		}
		deptRepository.save(dept);
	}

	public void update(Dept dept, BindingResult errors)
	{
		if (deptRepository.findOne(dept.getDeptno()) == null)
		{
			errors.reject("InvalidUpdateRequest", "레코드가 존재하지 않습니다.");
			return;
		}
		deptRepository.save(dept);
	}

	public void delete(Dept dept, BindingResult errors)
	{
		dept = deptRepository.findOne(dept.getDeptno());
		if (dept == null)
		{
			errors.reject("InvalidUpdateRequest", "레코드가 존재하지 않습니다.");
			return;
		}
		deptRepository.delete(dept.getDeptno());
	}

}
