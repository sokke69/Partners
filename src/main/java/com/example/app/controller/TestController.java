package com.example.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.example.app.service.UserService;

@Controller
public class TestController {
	
	@Autowired
	UserService userService;
	
	@GetMapping("test/emailList")
	public String emailListGet(Model model) throws Exception {
		List<String> emailList = userService.selectEmailAllUser();
		model.addAttribute("emailList", emailList);
		return "test/email_list";
	}

}
