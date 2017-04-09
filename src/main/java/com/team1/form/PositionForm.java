package com.team1.form;

import javax.validation.constraints.Digits;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import com.team1.domain.Position;

public class PositionForm extends Position{

	public void setPosition(Position position){
		super.setPstno(position.getPstno());
		super.setPstname(position.getPstname());
		super.setLoc(position.getLoc());
	}
	
	@NotNull
	@Digits(integer=2, fraction=0)
	@Override
	public int getPstno() {
		// TODO Auto-generated method stub
		return super.getPstno();
	}

	@Override
	public void setPstno(int pstno) {
		// TODO Auto-generated method stub
		super.setPstno(pstno);
	}
	@Size(max=20)
	@Override
	public String getPstname() {
		// TODO Auto-generated method stub
		return super.getPstname();
	}

	@Override
	public void setPstname(String pstname) {
		pstname.trim();
		if(pstname.equals(""))
			pstname = null;	
		super.setPstname(pstname);
	}
	@Size(max=10)
	@Override
	public String getLoc() {
		// TODO Auto-generated method stub
		return super.getLoc();
	}

	@Override
	public void setLoc(String loc) {
		loc.trim();
		if(loc.equals(""))
			loc = null;
		super.setLoc(loc);
	}

}
