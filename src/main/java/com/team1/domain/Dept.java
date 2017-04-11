package com.team1.domain;

import com.team1.util.ToString;

import javax.persistence.*;
import java.util.List;

@Entity
public class Dept extends ToString {

	@Id
	@Column(length = 2)
	private int deptno;

	@Column(length = 14)
	private String dname;

	@Column(length = 13)
	private String loc;

	@OneToMany(mappedBy = "dept", cascade = CascadeType.ALL)
	private List<Emp> emps;

	public List<Emp> getEmps() {
		return emps;
	}

	public void setEmps(List<Emp> emps) {
		this.emps = emps;
	}

	public int getDeptno() {
		return deptno;
	}

	public void setDeptno(int deptno) {
		this.deptno = deptno;
	}

	public String getDname() {
		return dname;
	}

	public void setDname(String dname) {
		this.dname = dname;
	}

	public String getLoc() {
		return loc;
	}

	public void setLoc(String loc) {
		this.loc = loc;
	}

}
