package com.team1.security;

import com.team1.domain.Account;
import org.springframework.security.core.userdetails.User;

public class UserDetails extends User {

	UserDetails(Account account)
	{
		super(account.getId(), account.getPassword(), account.getAuthorities());
	}

	public boolean hasAuthority(String auth)
	{
		return this.getAuthorities().stream().anyMatch((i) -> i.getAuthority().equals(auth));
	}

}
