package com.team1.security;

import com.team1.domain.Account;
import org.springframework.security.core.userdetails.User;

class UserDetails extends User {

	UserDetails(Account account)
	{
		super(account.getId(), account.getPassword(), account.getAuthorities());
	}

}
