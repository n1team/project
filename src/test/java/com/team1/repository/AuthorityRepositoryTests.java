package com.team1.repository;

import com.team1.domain.Authority;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@SpringBootTest
@RunWith(SpringRunner.class)
public class AuthorityRepositoryTests {

	@Autowired
	private AuthorityRepository authorities;

	@Autowired
	private AccountRepository accounts;

	@Autowired
	private AccountRepository accountRepository;

	@Test
	public void getSome()
	{
//		accounts.deleteAll();
		authorities.save(new Authority("CNT_ADMIN", "country crud permission", null));
		authorities.save(new Authority("CITY_ADMIN", "city crud permission", null));

//		authorities.save(new Authority("BASIC", "default", null));
//		authorities.delete("GUEST");
//		Authority a = new Authority();
//		a.setAuthName("BASIC");
//		authorities.saveAndFlush(a);
		authorities.findAll().forEach(System.out::println);
	}

}
