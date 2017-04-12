package com.team1.repository;

import com.team1.domain.Emp;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;


public interface EmpRepository extends JpaRepository<Emp, Integer> {

	@Modifying
	@Transactional
	@Query("delete from Emp where empno = ?1")
	void deleteByEmpno(int empno);

}
