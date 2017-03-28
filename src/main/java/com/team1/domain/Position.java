package com.team1.domain;



public class Position extends ToString{

	private int pstno;
	private String pstname;
	private String loc;
	private Player player;

	
	public Position() {
		
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


	public Player getPlayer() {
		return player;
	}


	public void setPlayer(Player player) {
		this.player = player;
	}
		
}
