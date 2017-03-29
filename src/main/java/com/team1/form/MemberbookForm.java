package com.team1.form;

import java.sql.Date;

import javax.validation.constraints.Digits;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import com.team1.domain.Memberbook;

public class MemberbookForm extends Memberbook{
	
	private String FilterDate;

	@Size(max=8)
	public String getFilterDate() {
		return FilterDate;
	}

	public void setFilterDate(String FilterDate) {
		this.FilterDate = FilterDate;
	}

	@NotNull
	@Size(max=15)
	@Override
	public String getMemberName() {
		return super.getMemberName();
	}

	@Override
	public void setMemberName(String memberName) {
		super.setMemberName(memberName);
	}

	@Digits(integer=8, fraction=0)
	@Override
	public Integer getBookCode() {
		return super.getBookCode();
	}

	@Override
	public void setBookCode(Integer bookCode) {
		super.setBookCode(bookCode);
	}

	@Size(max=15)
	@Override
	public String getCheckState() {
		return super.getCheckState();
	}

	@Override
	public void setCheckState(String checkState) {
		super.setCheckState(checkState);
	}

	@Override
	public Date getRentReserveDate() {
		return super.getRentReserveDate();
	}

	@Override
	public void setRentReserveDate(Date rentReserveDate) {
		super.setRentReserveDate(rentReserveDate);
	}
	
	public Date ConvertStringToSqlDate() {
		
		if ( getFilterDate() == null ) {
			setFilterDate("19000101");
		}
		
		if ( getFilterDate() != null ) {
			int Year = Integer.parseInt( getFilterDate().substring(0, 3) );
			int Month = Integer.parseInt( getFilterDate().substring(4, 5) );
			int Day = Integer.parseInt( getFilterDate().substring(6, 7) );
			
			return new Date( Year, Month - 1, Day );
		}
		return new Date(1900, 0, 1);
	}

}
