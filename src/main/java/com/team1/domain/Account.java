package com.team1.domain;

import com.team1.util.ToString;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

/**
 *   Account M : N Authority
 */

@Entity
public class Account extends ToString {

	@Id
	@Column(length = 32)
	private String id;

	private String password;

	private String email;

	@ManyToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
	@JoinTable(name = "account_authority",
				joinColumns = @JoinColumn(name = "account_id"),
				inverseJoinColumns = @JoinColumn(name = "authority_name"))
	private List<Authority> authorities;

	public String getId()
	{
		return id;
	}

	public void setId(String id)
	{
		this.id = id;
	}

	public String getPassword()
	{
		return password;
	}

	public void setPassword(String password)
	{
		this.password = password;
	}

	public String getEmail()
	{
		return email;
	}

	public void setEmail(String email)
	{
		this.email = email;
	}

	public boolean addAuthority(Authority auth)
	{
		if (authorities == null)
			authorities = new ArrayList<>();
		return authorities.add(auth);
	}

	public List<GrantedAuthority> getAuthorities()
	{
		if (authorities == null)
			return null;

		List<GrantedAuthority> rst = new ArrayList<>(authorities.size());
		authorities.forEach(r -> rst.add(new SimpleGrantedAuthority(r.getAuthName())));
		return rst;
	}

	public void set(Account other)
	{
		this.id = other.id;
		this.password = other.password;
		this.authorities = other.authorities;
		this.email = other.email;
	}

	public boolean hasAuth(String authName)
	{
		return authorities.stream().anyMatch(a -> a.getAuthName().equals(authName));
	}

	public void setAuthList(List<Authority> list)
	{
		this.authorities = list;
	}
}
