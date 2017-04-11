package com.team1.domain;

import com.team1.util.ToString;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.Date;

@Entity
public class Emp extends ToString {

	@Id
	@Column(length = 4)
	private int empno;

	@NotNull
	@Column(length = 10)
	private String ename;

	@Column(length = 9)
	private String job;

	@Column(length = 4)
	private Integer mgr;

	private Date hiredate;

	@Column(length = 7, scale = 2)
	private BigDecimal sal;

	@Column(length = 7, scale = 2)
	private BigDecimal comm;

	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "deptno", foreignKey = @ForeignKey(name = "FK_DEPTNO"))
	private Dept dept;
	
	public Dept getDept() {
		return dept;
	}

	public void setDept(Dept dept) {
		this.dept = dept;
	}

	public int getEmpno() {
		return empno;
	}

	public void setEmpno(int empno) {
		this.empno = empno;
	}

	public String getEname() {
		return ename;
	}

	public void setEname(String ename) {
		this.ename = ename;
	}

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	public Integer getMgr() {
		return mgr;
	}

	public void setMgr(Integer mgr) {
		this.mgr = mgr;
	}

	public Date getHiredate() {
		return hiredate;
	}

	public void setHiredate(Date hiredate) {
		this.hiredate = hiredate;
	}

	public BigDecimal getSal() {
		return sal;
	}

	public void setSal(BigDecimal sal) {
		this.sal = sal;
	}

	public BigDecimal getComm() {
		return comm;
	}

	public void setComm(BigDecimal comm) {
		this.comm = comm;
	}

	public String getSimpleDate()
	{
		if (hiredate == null)
			return "0000-00-00";
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		return sdf.format(hiredate);
	}

}
