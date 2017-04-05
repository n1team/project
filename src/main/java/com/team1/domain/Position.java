package com.team1.domain;

import java.util.List;

public class Position extends ToString{
	private int pstno;
	private String pstname;
	private String loc;
	private List<Player> player;
	
	public Position(){
		
	}
	
	

	public List<Player> getPlayer() {
		return player;
	}



	public void setPlayer(List<Player> player) {
		this.player = player;
	}



	public int getPstno() {
		return pstno;
	}
	public void setPstno(int pstno) {
		this.pstno = pstno;
	}
	public String getPstname() {
		return pstname;
	}
	public void setPstname(String pstname) {
		this.pstname = pstname;
	}
	public String getLoc() {
		return loc;
	}
	public void setLoc(String loc) {
		this.loc = loc;
	}
}
