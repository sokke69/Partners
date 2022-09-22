package com.example.app.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.app.domain.User;
import com.example.app.domain.UserRequiredDetail;
import com.example.app.mapper.UserDetailMapper;

@Controller
@RequestMapping("/regist")
public class RegistController {
	
	@Autowired
	HttpSession session;
	
	@Autowired
	UserDetailMapper mapper;

	@GetMapping("/sex")
	public String registSexGet(Model model) {
		model.addAttribute("user", new User());
		return "regist_sex";
	}
	
	@PostMapping("/sex")
	public String registSexPost(@ModelAttribute("user") User user) {
		Integer registSex = user.getSex();
		session.setAttribute("regist_sex", registSex);
		return "redirect:/regist/age";
	}
	
	@GetMapping("/age")
	public String registAgeGet(Model model) {
		model.addAttribute("user", new User());
		return "regist_age";
	}
	
	@PostMapping("/age")
	public String registAgePost(@ModelAttribute("user") User user) {
		Integer registAge = user.getAge();
		session.setAttribute("regist_age", registAge);
		return "redirect:/regist/name";
	}
	
	@GetMapping("/name")
	public String registNameGet(Model model) {
		model.addAttribute("user", new User());
		return "regist_name";
	}
	
	
	/* ここから途中だよ  */
	
	@PostMapping("/name")
	public String registNamePost(@ModelAttribute("user") User user) {
		String registName = user.getName();
		session.setAttribute("regist_name", registName);
		return "redirect:/regist/height";
	}
	
	@GetMapping("/height")
	public String registHeightGet(Model model) {
		model.addAttribute("userRD", new UserRequiredDetail());
		return "regist_height";
	}
	
	@PostMapping("/height")
	public String registHeightPost(@ModelAttribute("userRD") UserRequiredDetail userRD) {
		int registHeight = userRD.getHeight();
		session.setAttribute("regist_height", registHeight);
		return "redirect:/regist/residence";
	}
	
	@GetMapping("/residence")
	public String registResidenceGet(Model model) {
		model.addAttribute("userRD", new UserRequiredDetail());
		model.addAttribute("residences", mapper.selectResidenceAll());
		return "regist_residence";
	}
	
	@PostMapping("/residence")
	public String registResidencePost(@ModelAttribute("userRD") UserRequiredDetail userRD) {
		int residenceId = userRD.getResidence();
		session.setAttribute("regist_residence", residenceId);
		return "redirect:/regist/occupation";
	}
	
	@GetMapping("/occupation")
	public String registOccupationGet(Model model) {
		model.addAttribute("userRD", new UserRequiredDetail());
		model.addAttribute("occupations", mapper.selectOccupationAll());
		return "regist_occupation";
	}
	
	@GetMapping("/done")
	public String registDone() {
		Integer registSex = (Integer) session.getAttribute("regist_sex");
		Integer registAge = (Integer) session.getAttribute("regist_age");
		String registName = (String) session.getAttribute("regist_name");
		int registHeight = (int) session.getAttribute("regist_height");
		int registResidence = (int) session.getAttribute("regist_residence");
		System.out.println("regist_sex : " + registSex);
		System.out.println("regist_age : " + registAge);
		System.out.println("regist_name : " + registName);
		System.out.println("regist_height : " + registHeight);
		System.out.println("regist_residence : " + registResidence);
		return "/regist_done";
	}
	
}
