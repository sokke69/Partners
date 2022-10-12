package com.example.app.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.app.service.SearchService;

@Controller
@RequestMapping("/search")
public class SearchController {
	
	@Autowired
	HttpSession session;
	
	@Autowired
	SearchService searchService;
	
	@GetMapping({"","/", "/top"})
	public String searchTopGet(Model model) throws Exception {
		model.addAttribute("userList", searchService.searchUserAllDetailList((Integer)session.getAttribute("sex")));
		return "/search/user_list";
	}
	
	

}
