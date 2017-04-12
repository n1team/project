package com.team1.web;

import com.team1.domain.Account;
import com.team1.domain.Authority;
import com.team1.repository.AccountRepository;
import com.team1.security.AccountService;
import com.team1.security.AuthorityService;
import com.team1.security.UserDetailsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.MultiValueMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.List;

@Controller
public class HomeController {

	private final AccountService accountService;
	private final AuthorityService authorityService;
	private final PasswordEncoder passwordEncoder;
	private final UserDetailsService userDetailsService;

	@Autowired
	HomeController(AccountService as,
	               AuthorityService authService,
	               PasswordEncoder pe,
	               UserDetailsService uds)
	{
		this.accountService = as;
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
	public String loginPage(HttpServletRequest req, Model m, Account account)
	{
		m.addAttribute("authType", "login");
		return "auth/authForm";
	}


	@RequestMapping("/logout")
	public String logoutPage()
	{
		SecurityContextHolder.getContext().setAuthentication(null);
		return "redirect:/";
	}

	@RequestMapping("/register")
	public String registerPage(HttpServletRequest req, Model m)
	{
		if (!SecurityContextHolder.getContext().getAuthentication().getPrincipal().equals("anonymousUser"))
			return String.format("redirect:%s", req.getHeader("referer"));
		m.addAttribute("authType", "register");
		return "auth/authForm";
	}

	@PostMapping(value="/register")
	public String register(@Valid Account account,
	                       BindingResult errors)
	{
		account.addAuthority(authorityService.getDefaultAuthority());
		account.setPassword(passwordEncoder.encode(account.getPassword()));
		accountService.insert(account, errors);

		if (errors.hasErrors())
			return "redirect:/";

		UserDetails userDetails = userDetailsService.loadUserByUsername(account.getId());
		Authentication authentication =
				new UsernamePasswordAuthenticationToken(userDetails, null, userDetails.getAuthorities());
		SecurityContextHolder.getContext().setAuthentication(authentication);
		return "redirect:/";
	}

	@RequestMapping("/account")
	public String accountPage()
	{
		return "redirect:/account/1";
	}

	@RequestMapping("/account/{pageNumber}")
	public String accountPage(@PathVariable int pageNumber, Model model)
	{
		Page<Account> accounts = accountService.getAccounts(new PageRequest(pageNumber - 1, 10));
		model.addAttribute("data", accounts);
		accounts.getContent().forEach(i -> model.addAttribute("account" + i.getId(), new Account()));
		model.addAttribute("authList", authorityService.getAll());
		return "auth/accountList";
	}

	@PostMapping("/account/update")
	public String editAccount(@Valid Account account,
	                          BindingResult errors,
	                          HttpServletRequest req,
	                          @RequestBody MultiValueMap<String,String> formData,
	                          Model m)
	{
		Account a = accountService.getAccount(account.getId());
		if (a == null)
		{
			errors.reject("InvalidRequest", "올바른 요청이 아닙니다.");
			return String.format("redirect:%s", req.getHeader("referer"));
		}

		String[] auth = formData.getFirst("authorities").trim().split(" ");
		List<Authority> authList = new ArrayList<>(auth.length);
		Arrays.stream(auth).forEach(i -> authList.add(authorityService.getByName(i)));
		a.setAuthList(authList);

		accountService.update(a, errors);
		return String.format("redirect:%s", req.getHeader("referer"));
	}

}
