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
import com.example.app.mapper.UserFreeDetailMapper;
import com.example.app.mapper.UserMapper;
import com.example.app.mapper.UserRequiredDetailMapper;

@Controller
@RequestMapping("/regist")
public class RegistController {
	
	@Autowired
	HttpSession session;
	
	@Autowired
	UserMapper userMapper;
	
	@Autowired
	UserRequiredDetailMapper userRDMapper;
	
	@Autowired
	UserFreeDetailMapper userFDMapper;
	
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
		model.addAttribute("residences", userRDMapper.selectResidenceAll());
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
		model.addAttribute("occupations", userRDMapper.selectOccupationAll());
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
		model.addAttribute("annual_incomes", userRDMapper.selectAnnualIncomeAll());
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
		model.addAttribute("marital_statuses", userRDMapper.selectMaritalStatusAll());
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
		model.addAttribute("desire_to_marries", userRDMapper.selectDesireToMarryAll());
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
		model.addAttribute("holidays", userRDMapper.selectHolidayAll());
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
		model.addAttribute("smokings", userRDMapper.selectSmokingAll());
		return "regist_smoking";
	}
	
	@PostMapping("smoking")
	public String smokingPost(@ModelAttribute("userRD") UserRequiredDetail userRD) {
		int smokingId = userRD.getSmoking();
		session.setAttribute("regist_smoking", smokingId);
		return "redirect:/regist/housemate";
	}
	
	@GetMapping("housemate")
	public String housemateGet(Model model) {
		model.addAttribute("userRD", new UserRequiredDetail());
		model.addAttribute("housemate", userRDMapper.selectHousemateAll());
		return "regist_housemate";
	}
	
	@PostMapping("housemate")
	public String housematePost(@ModelAttribute("userRD") UserRequiredDetail userRD) {
		int housemateId = userRD.getHousemate();
		session.setAttribute("regist_housemate", housemateId);
		return "redirect:/regist/done";
	}
	
	@GetMapping("/done")
	public String registDone() {
		User user = new User();
		UserRequiredDetail userRD = new UserRequiredDetail();
		
		user.setEmail((String) session.getAttribute("regist_email"));
		user.setSex((Integer) session.getAttribute("regist_sex"));
		user.setAge((Integer) session.getAttribute("regist_age"));
		user.setName((String) session.getAttribute("regist_name"));
		
		userRD.setHeight((int) session.getAttribute("regist_height"));
		userRD.setResidence((int) session.getAttribute("regist_residence"));
		userRD.setOccupation((int) session.getAttribute("regist_occupation"));
		userRD.setAnnualIncome((int) session.getAttribute("regist_annual_income"));
		userRD.setMaritalStatus((int) session.getAttribute("regist_marital_status"));
		userRD.setDesireToMarry((int) session.getAttribute("regist_desire_to_marry"));
		userRD.setHoliday((int) session.getAttribute("regist_holiday"));
		userRD.setSmoking((int) session.getAttribute("regist_smoking"));
		userRD.setHousemate((int) session.getAttribute("regist_housemate"));
		
		userMapper.insertUser(user);
		userRDMapper.insertUserRD(userRD);
		userFDMapper.insertUserFD();
		
		session.invalidate();
		
		return "/regist_done";
	}
	
}
