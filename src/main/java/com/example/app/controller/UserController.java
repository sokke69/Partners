package com.example.app.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.app.domain.User;
import com.example.app.domain.UserBasicDetail;
import com.example.app.domain.UserFreeDetail;
import com.example.app.domain.UserRequiredDetail;
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
	
	@GetMapping("/login/{loginUrl}")
	public String loginStart(@PathVariable("loginUrl") String loginUrl) {
		String status = (String) session.getAttribute("email");
		if (!status.equals("sended")) {
			session.setAttribute("error_title", "このページは開けません");
			session.setAttribute("error_detail", "申し訳ございませんがトップページまでお戻りください");
			return "redirect:/error";
		}
		String sessionLoginUrl = (String) session.getAttribute("login_url");
		if (sessionLoginUrl.equals(loginUrl) || sessionLoginUrl.equals(null)) {
			session.removeAttribute("status");
			session.setAttribute("status", "login");
			session.setAttribute("login_id", session.getAttribute("send_email"));
			session.removeAttribute("send_email");
			session.removeAttribute("email");
			return "redirect:/user/top";
		}
		return "/invalid_url";
		
	}
	
	@GetMapping("/top")
	public String topGet() throws Exception{
		if (session.getAttribute("status") == null) {
			return "/invalid";
		}
		/*
		 * Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		 * UserDetails userDetails = (UserDetails) auth.getPrincipal();
		 */
		/*
		 * String userRoles = auth.getAuthorities().toString(); String loginId =
		 * userDetails.getUsername(); System.out.println("login_id : " + loginId);
		 * System.out.println("login_role : " + userRoles);
		 * 
		 * session.setAttribute("login_id", loginId);
		 */

		return "/user/top";
	}
	
	@GetMapping("/mypage")
	public String mypageGet(Model model) throws Exception{
		if (!session.getAttribute("status").equals("login") || session.getAttribute("status") == null) {
			return "/invalid";
		}
		
		
		String loginId = (String) session.getAttribute("login_id");
		User user = new User();
		user = userService.getUserByLoginId(loginId);
		model.addAttribute("user", user);
		
		return "/user/mypage";
	}

	@GetMapping("/mypage/update")
	public String profileUpdateGet(Model model) throws Exception {
		String loginId = (String) session.getAttribute("login_id");
		User user = new User();
		user = userService.getUserDetailOfNumberByLoginId(loginId);
		model.addAttribute("user", user);
		
		UserBasicDetail userBD = user.getUserBD();
		UserRequiredDetail userRD = user.getUserRD();
		UserFreeDetail userFD = user.getUserFD();
		
		model.addAttribute("holidays", userService.selectHolidayAll());
		model.addAttribute("holidaySelected", userRD.getHoliday());
		model.addAttribute("annual_incomes", userService.selectAnnualIncomeAll());
		model.addAttribute("annualIncomeSelected", userRD.getAnnualIncome());
		

		return "/user/profile_update";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
}
