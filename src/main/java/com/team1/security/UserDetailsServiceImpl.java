package com.team1.security;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.team1.domain.Account;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		Account account = new Account();
		account.setUsername(username);
		account.setPassword("1234");
		UserDetailsImpl user = new UserDetailsImpl(account);
		
		return user;
	}

}
