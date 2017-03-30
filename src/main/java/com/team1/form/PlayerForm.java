package com.team1.form;

import javax.validation.constraints.Digits;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import com.team1.domain.Player;

public class PlayerForm extends Player{
	public void setPlayer(Player player){
		super.setPlayerno(player.getPlayerno());
		super.setPname(player.getPname());
		super.setJob(player.getJob());
		super.setJoin(player.getJoin());
		super.setHeights(player.getHeights());
		super.setUniformNumber(player.getUniformNumber());
		super.setPstno(player.getPstno());
	}
	
	@NotNull
	@Digits(integer=3, fraction=0)
	@Override
	public int getPlayerno() {
		// TODO Auto-generated method stub
		return super.getPlayerno();
	}

	@Override
	public void setPlayerno(int playerno) {
		// TODO Auto-generated method stub
		super.setPlayerno(playerno);
	}
	@NotNull
	@Size(max=20)
	@Override
	public String getPname() {
		// TODO Auto-generated method stub
		return super.getPname();
	}

	@Override
	public void setPname(String pname) {
		pname.trim();
		if(pname.equals(""))
			pname = null;	
		super.setPname(pname);
	}
	@Size(max=20)
	@Override
	public String getJob() {
		// TODO Auto-generated method stub
		return super.getJob();
	}

	@Override
	public void setJob(String job) {
		// TODO Auto-generated method stub
		super.setJob(job);
	}
	@Digits(integer=4, fraction=0)
	@Override
	public int getJoin() {
		// TODO Auto-generated method stub
		return super.getJoin();
	}

	@Override
	public void setJoin(int join) {
		// TODO Auto-generated method stub
		super.setJoin(join);
	}
	@Digits(integer=3, fraction=0)
	@Override
	public int getHeights() {
		// TODO Auto-generated method stub
		return super.getHeights();
	}

	@Override
	public void setHeights(int heights) {
		// TODO Auto-generated method stub
		super.setHeights(heights);
	}
	@Digits(integer=3, fraction=0)
	@Override
	public int getUniformNumber() {
		// TODO Auto-generated method stub
		return super.getUniformNumber();
	}
	
	@Override
	public void setUniformNumber(int uniformNumber) {
		// TODO Auto-generated method stub
		super.setUniformNumber(uniformNumber);
	}
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

	
	
}
