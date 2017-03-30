package com.team1.security;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;

import com.team1.domain.Account;

public class UserDetailsImpl extends User {

	public UserDetailsImpl(Account account) {
		super(account.getUsername(), account.getPassword(), authorities(account));
	}
	
	public static Collection<? extends GrantedAuthority> authorities(Account account) {
		List<GrantedAuthority> authorities = new ArrayList<>();
		
		authorities.add(new SimpleGrantedAuthority("ROLE_ADMIN"));
		authorities.add(new SimpleGrantedAuthority("ROLE_USER"));
		
		return authorities;
	}
	
}
