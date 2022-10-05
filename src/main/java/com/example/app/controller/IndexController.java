package com.example.app.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.example.app.service.UserService;

@Controller
public class IndexController {

	@Autowired
	HttpSession session;

	@Autowired
	JavaMailSender mailSender;

	@Autowired
	UserService userService;
	
	@GetMapping("/")
	public String startGet() {
		if (session.getAttribute("status") == null) {
			return "/index";
		} else if (session.getAttribute("status").equals("login")) {
			return "/user/top";
		}
		return "/";
	}

	@GetMapping("/index")
	public String indexGet() {
		if (session.getAttribute("status") == null) {
			return "/index";
		} else if (session.getAttribute("status").equals("login")) {
			return "/user/top";
		}
		return "/index";
	}

	
	@GetMapping("logout")
	public String logoutGet() throws Exception{
		session.invalidate();
		return "redirect:/index";
	}
	
}
