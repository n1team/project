package com.team1.security;

import com.team1.domain.Authority;
import com.team1.repository.AuthorityRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AuthorityService {

	private static final String DefaultAuthName = "BASIC";

	private final AuthorityRepository authorityRepository;

	@Autowired
	public AuthorityService(AuthorityRepository ar)
	{
		this.authorityRepository = ar;
	}

	public Authority getDefaultAuthority()
	{
		return authorityRepository.getOne(DefaultAuthName);
	}

	public List<Authority> getAll()
	{
		return authorityRepository.findAll();
	}

	public Authority getByName(String name)
	{
		return authorityRepository.findOne(name);
	}

}
