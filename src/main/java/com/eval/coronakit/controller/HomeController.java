package com.eval.coronakit.controller;

import java.util.ArrayList;

import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

	@RequestMapping("/")
	public String index() {
		return  "index";
		
	}
	
	@RequestMapping("/home")
	public String home( ) {
		String view =null;
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if ((auth instanceof AnonymousAuthenticationToken) && auth.isAuthenticated()) {
			view="login-form";
		}	else 
			view="main-menu";
		
		return view;
		
	}
}