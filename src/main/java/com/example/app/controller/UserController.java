package com.example.app.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.app.domain.User;
import com.example.app.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	UserService userService;
	
	@Autowired
	HttpSession session;
	
	@GetMapping("/userList")
	public String selectUserAll(Model model) throws Exception {
		model.addAttribute("userList", userService.getUserAllDetailList());
		return "/user/user_list";
	}
	
	@GetMapping("/top")
	public String topGet() throws Exception{
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		UserDetails userDetails = (UserDetails) auth.getPrincipal();
		String loginId = userDetails.getUsername();
		
		session.setAttribute("login_id", loginId);
		
		return "/user/top";
	}
	
	@GetMapping("/mypage")
	public String mypageGet(Model model) throws Exception{
		String loginId = (String) session.getAttribute("login_id");
		User user = new User();
		user = userService.getUserByLoginId(loginId);
		model.addAttribute("user", user);
		
		return "/user/mypage";
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
