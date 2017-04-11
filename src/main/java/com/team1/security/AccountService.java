package com.team1.security;

import com.team1.domain.Account;
import com.team1.repository.AccountRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

@Service
public class AccountService {

	private final AccountRepository accountRepository;

	@Autowired
	public AccountService(AccountRepository accountRepository)
	{
		this.accountRepository = accountRepository;
	}

	public Page<Account> getAccounts(PageRequest page)
	{
		return accountRepository.findAll(page);
	}

	public Account getAccount(String id)
	{
		return accountRepository.findOne(id);
	}

	public void insert(Account account, BindingResult error)
	{
		if (accountRepository.findOne(account.getId()) != null)
		{
			error.reject("insertion failure", "아이디 중복");
			return;
		}
		accountRepository.save(account);
	}

	public void update(Account account, BindingResult error)
	{
		if (accountRepository.findOne(account.getId()) == null)
		{
			error.reject("update failure", "아이디가 없습니다");
			return;
		}
		accountRepository.save(account);
	}

}
