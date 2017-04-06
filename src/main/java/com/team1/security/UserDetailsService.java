package com.team1.security;

import com.team1.domain.Account;
import com.team1.repository.AccountRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.*;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;

@Service
public class UserDetailsService implements org.springframework.security.core.userdetails.UserDetailsService {

	private final AccountRepository accountRepo;

	@Autowired
	UserDetailsService(AccountRepository accountRepository)
	{
		this.accountRepo = accountRepository;
	}

	@Override
	public UserDetails loadUserByUsername(String s) throws UsernameNotFoundException
	{
		Account found = accountRepo.findOne(s);
		if (found == null)
			throw new UsernameNotFoundException(s);
		return new com.team1.security.UserDetails(found);
	}
}
