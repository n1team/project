package com.team1.domain;

import com.team1.util.ToString;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

/**
 *   Account M : N Authority
 */

@Entity
public class Authority extends ToString {

	@Id
	@Column(length = 10)
	private String authName;
	private String description;

	@ManyToMany(fetch = FetchType.LAZY, mappedBy = "authorities")
	private List<Account> accounts;

	public Authority()
	{
	}

	public Authority(String authName, String desc, List<Account> accounts)
	{
		this.authName = authName;
		this.description = desc;
		this.accounts = accounts;
	}

	public String getAuthName()
	{
		return authName;
	}

	public void setAuthName(String authName)
	{
		this.authName = authName;
	}

	public String getDesc()
	{
		return description;
	}

	public void setDesc(String desc)
	{
		this.description = desc;
	}

	public boolean addAccount(Account account)
	{
		if (accounts == null)
			accounts = new ArrayList<>();
		return accounts.add(account);
	}

}
