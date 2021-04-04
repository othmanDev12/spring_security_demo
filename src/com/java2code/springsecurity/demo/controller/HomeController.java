package com.luv2code.springsecurity.demo.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
	
	@GetMapping(path = "/")
	public String getHome() {
		return "home";
	}
	
	@GetMapping(path = "/leaders")
	public String showMangerPage() {
		
		return "leader-page";
		
	}
	
	@GetMapping(path = "/systems")
	public String showAdminPage() {
		return "admin-page";
	}
	
	@GetMapping("/access-denied")
	public String showAccessDeniedPage() {
		return "access-denied";
	}

}
