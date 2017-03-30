package com.team1.config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
public class SecurutyConfig extends WebSecurityConfigurerAdapter{
	
	@Autowired
	DataSource dataSource;
	
	@Override
	protected void configure (AuthenticationManagerBuilder auth) throws Exception {
		/*
		 * 인증
		 */
		
//		auth.inMemoryAuthentication()
//		.withUser("admin").password("1234").roles("ADMIN")
//		.and()
//		.withUser("user").password("1234").roles("USER");
		auth.jdbcAuthentication().dataSource(dataSource);
		
	}
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		/*
		 * 권한
		 */
		
		http.csrf().disable()
		.authorizeRequests()
//			.antMatchers("/cosmatic/**").hasRole("ADMIN")
			.antMatchers("/cosmatic/register").hasRole("ADMIN")
			.antMatchers("/cosmatic/modify/**").hasRole("ADMIN")
			.antMatchers("/cosmatic/unregister/**").hasRole("ADMIN")
		.and()
		.logout()
			.logoutSuccessUrl("/")
		.and()
		.formLogin()
			.loginPage("/login")
		.permitAll();
		
	}
	
}
