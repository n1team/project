package com.team1.employee;

import com.team1.domain.Emp;
import com.team1.repository.EmpRepository;
import org.mybatis.spring.transaction.SpringManagedTransaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

@Service
public class EmpService {

	private final EmpRepository empRepository;

	@Autowired
	EntityManager em;

	@Autowired
	public EmpService(EmpRepository empRepository)
	{
		this.empRepository = empRepository;
	}

	public Page<Emp> getEmps(PageRequest page)
	{
		return empRepository.findAll(page);
	}

	public Emp getByEmpno(int empno)
	{
		return empRepository.findOne(empno);
	}

	public void insert(Emp emp, BindingResult errors)
	{
		if (empRepository.findOne(emp.getEmpno()) != null)
		{
			errors.reject("InvalidInsertRequest", "레코드가 이미 존재합니다.");
			return;
		}
		empRepository.save(emp);
	}

	public void update(Emp emp, BindingResult errors)
	{
		if (empRepository.findOne(emp.getEmpno()) == null)
		{
			errors.reject("InvalidUpdateRequest", "레코드가 존재하지 않습니다.");
			return;
		}
		empRepository.save(emp);
	}

	public void delete(Emp emp, BindingResult errors)
	{
		emp = empRepository.findOne(emp.getEmpno());
		if (emp == null)
		{
			errors.reject("InvalidUpdateRequest", "레코드가 존재하지 않습니다.");
			return;
		}

		empRepository.deleteByEmpno(emp.getEmpno());
	}
}
