package com.team1.repository;

import com.team1.domain.Dept;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

public interface DeptRepository extends JpaRepository<Dept, Integer> {

	@Modifying
	@Transactional
	@Query("delete from Dept where deptno = ?1")
	void deleteByDeptno(int deptno);

}
