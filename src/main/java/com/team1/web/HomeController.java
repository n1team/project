package com.team1.web;

import com.team1.domain.Account;
import com.team1.repository.AccountRepository;
import com.team1.security.AuthorityService;
import com.team1.security.UserDetailsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import java.util.Enumeration;

@Controller
public class HomeController {

	private final AccountRepository accountRepository;
	private final AuthorityService authorityService;
	private final PasswordEncoder passwordEncoder;
	private final UserDetailsService userDetailsService;

	@Autowired
	HomeController(AccountRepository ar,
	               AuthorityService authService,
	               PasswordEncoder pe,
	               UserDetailsService uds)
	{
		this.accountRepository = ar;
		this.authorityService = authService;
		this.passwordEncoder = pe;
		this.userDetailsService = uds;
	}

	@RequestMapping("/")
	public String mainPage()
	{
		return "index";
	}

	@RequestMapping("/login")
	public String loginPage()
	{
		return "auth/loginForm";
	}

	//TODO: 로그인시 접속 차단
	@RequestMapping("/register")
	public String registerPage(HttpServletRequest req)
	{
		Enumeration<String> e = req.getHeaderNames();
		for (; e.hasMoreElements();)
			System.out.println(e.nextElement());
		return "auth/registerForm";
	}

	@RequestMapping(value="/register", method= RequestMethod.POST)
	public String register(Account account)
	{
		account.addAuthority(authorityService.getDefaultAuthority());
		account.setPassword(passwordEncoder.encode(account.getPassword()));
		accountRepository.save(account);

		// SecurityContextHolder에서 Context를 받아 인증 설정

		UserDetails userDetails = userDetailsService.loadUserByUsername(account.getId());

		Authentication authentication =
				new UsernamePasswordAuthenticationToken(userDetails, null, userDetails.getAuthorities());
		SecurityContextHolder.getContext().setAuthentication(authentication);
		return "redirect:/";
	}

}
