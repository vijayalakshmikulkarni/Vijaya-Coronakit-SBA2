package com.eval.coronakit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class LoginController {

		
	@RequestMapping("/custom-login")
	public String login() {
		return "login-form";
		
				
	}
	
	@RequestMapping("/custom-error")
	public String error() {
		return "error-page";
	}
	
	
}
