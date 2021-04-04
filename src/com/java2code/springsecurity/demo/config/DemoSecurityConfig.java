package com.luv2code.springsecurity.demo.config;


import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity
public class DemoSecurityConfig extends WebSecurityConfigurerAdapter {
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		// add our users in authentication memory
		auth.inMemoryAuthentication().
		withUser("jhon").password("{noop}test123").roles("EMPLOYEE");
		
		auth.inMemoryAuthentication().
		withUser("mary").password("{noop}test123").roles("EMPLOYEE" , "MANAGER");
		
		auth.inMemoryAuthentication().
		withUser("susan").password("{noop}test123").roles("EMPLOYEE" , "ADMIN");
	}
	
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests().
		//anyRequest().authenticated().
		antMatchers("/").hasRole("EMPLOYEE")
		.antMatchers("/leaders").hasRole("MANAGER")
		.antMatchers("/systems").hasRole("ADMIN").
		and().
		formLogin().
		loginPage("/bootstapShowingForm").
		loginProcessingUrl("/authenticateTheUser").
		permitAll()
		.and().logout()
		.permitAll()
		.and().exceptionHandling().accessDeniedPage("/access-denied");
	}

}
