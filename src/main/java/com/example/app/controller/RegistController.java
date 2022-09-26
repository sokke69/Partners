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
import com.example.app.mapper.UserRequiredDetailMapper;

@Controller
@RequestMapping("/regist")
public class RegistController {
	
	@Autowired
	HttpSession session;
	
	@Autowired
	UserRequiredDetailMapper userRDmapper;
	
	@GetMapping("/top")
	public String registTopGet(Model model) {
		model.addAttribute("user", new User());
		return "regist_top";
	}
	
	@PostMapping("/top")
	public String registTopPost(@ModelAttribute("user") User user) {
		String email = user.getEmail();
		session.setAttribute("regist_email", email);
		return "redirect:/regist/sex";
	}
	
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
		model.addAttribute("residences", userRDmapper.selectResidenceAll());
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
		model.addAttribute("occupations", userRDmapper.selectOccupationAll());
		return "regist_occupation";
	}
	
	@PostMapping("/occupation")
	public String registOccupationPost(@ModelAttribute("urerRD") UserRequiredDetail userRD) {
		int occupationId = userRD.getOccupation();
		session.setAttribute("regist_occupation", occupationId);
		return "redirect:/regist/annual_income";
	}
	
	@GetMapping("/annual_income")
	public String registAnnualIncomeGet(Model model) {
		model.addAttribute("userRD", new UserRequiredDetail());
		model.addAttribute("annual_incomes", userRDmapper.selectAnnualIncomeAll());
		return "regist_annual_income";
		
	}
	
	@PostMapping("/annual_income")
	public String registAnnualIncomePost(@ModelAttribute("userRD") UserRequiredDetail userRD) {
		int annualIncomeId = userRD.getAnnualIncome();
		session.setAttribute("regist_annual_income", annualIncomeId);
		return "redirect:/regist/marital_status";
	}
	
	@GetMapping("/marital_status")
	public String registMaritalStatusGet(Model model) {
		model.addAttribute("userRD", new UserRequiredDetail());
		model.addAttribute("marital_statuses", userRDmapper.selectMaritalStatusAll());
		return "regist_marital_status";
	}
	
	@PostMapping("/marital_status")
	public String registMaritalStatusPost(@ModelAttribute("userRD") UserRequiredDetail userRD) {
		int maritalStatusId = userRD.getMaritalStatus();
		session.setAttribute("regist_marital_status", maritalStatusId);
		return "redirect:/regist/desire_to_marry";
	}
	
	@GetMapping("/desire_to_marry")
	public String registDesireToMarry(Model model) {
		model.addAttribute("userRD", new UserRequiredDetail());
		model.addAttribute("desire_to_marries", userRDmapper.selectDesireToMarryAll());
		return "regist_desire_to_marry";
	}
	
	@PostMapping("/desire_to_marry")
	public String registDesireToMarry(@ModelAttribute("userRD") UserRequiredDetail userRD) {
		int desireToMarryId = userRD.getDesireToMarry();
		session.setAttribute("regist_desire_to_marry", desireToMarryId);
		return "redirect:/regist/holiday";
	}
	
	@GetMapping("holiday")
	public String holidayGet(Model model) {
		model.addAttribute("userRD", new UserRequiredDetail());
		model.addAttribute("holidays", userRDmapper.selectHolidayAll());
		return "regist_holiday";
	}
	
	@PostMapping("holiday")
	public String holidayPost(@ModelAttribute("userRD") UserRequiredDetail userRD) {
		int holidayId = userRD.getHoliday();
		session.setAttribute("regist_holiday", holidayId);
		return "redirect:/regist/smoking";
	}
	
	@GetMapping("smoking")
	public String smokingGet(Model model) {
		model.addAttribute("userRD", new UserRequiredDetail());
		model.addAttribute("smokings", userRDmapper.selectSmokingAll());
		return "regist_smoking";
	}
	
	@PostMapping("smoking")
	public String smokingPost(@ModelAttribute("userRD") UserRequiredDetail userRD) {
		int smokingId = userRD.getSmoking();
		session.setAttribute("regist_holiday", smokingId);
		return "redirect:/regist/housemate";
	}
	
	@GetMapping("housemate")
	public String housemateGet(Model model) {
		model.addAttribute("userRD", new UserRequiredDetail());
		model.addAttribute("housemate", userRDmapper.selectHousemateAll());
		return "regist_housemate";
	}
	
	@PostMapping("housemate")
	public String housematePost(@ModelAttribute("userRD") UserRequiredDetail userRD) {
		int housemateId = userRD.getHousemate();
		session.setAttribute("regist_holiday", housemateId);
		return "redirect:/regist/done";
	}
	
	@GetMapping("/done")
	public String registDone() {
		String registEmail = (String) session.getAttribute("regist_email");
		Integer registSex = (Integer) session.getAttribute("regist_sex");
		Integer registAge = (Integer) session.getAttribute("regist_age");
		String registName = (String) session.getAttribute("regist_name");
		int registHeight = (int) session.getAttribute("regist_height");
		int registResidence = (int) session.getAttribute("regist_residence");
		int registOccupation = (int) session.getAttribute("regist_occupation");
		int registAnnualIncome = (int) session.getAttribute("regist_annual_income");
		int registMaritalStatus = (int) session.getAttribute("regist_marital_status");
		int registDesireToMarry = (int) session.getAttribute("regist_desire_to_marry");
		int registHoliday = (int) session.getAttribute("regist_holiday");
		int registSmoking = (int) session.getAttribute("regist_smoking");
		int registHousemate = (int) session.getAttribute("registHousemate");
		System.out.println("regist_email : " + registEmail);
		System.out.println("regist_sex : " + registSex);
		System.out.println("regist_age : " + registAge);
		System.out.println("regist_name : " + registName);
		System.out.println("regist_height : " + registHeight);
		System.out.println("regist_residence : " + registResidence);
		System.out.println("regist_occupation : " + registOccupation);
		System.out.println("regist_annul_income : " + registAnnualIncome);
		System.out.println("regist_marital_status : " + registMaritalStatus);
		System.out.println("regist_desire_to_marry : " + registDesireToMarry);
		System.out.println("regist_holiday : " + registHoliday);
		System.out.println("regist_smoking : " + registSmoking);
		System.out.println("regist_housemate : " + registHousemate);
		
		return "/regist_done";
	}
	
}
