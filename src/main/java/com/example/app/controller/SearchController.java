package com.example.app.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.app.domain.User;
import com.example.app.domain.UserBasicDetail;
import com.example.app.service.SearchService;
import com.example.app.service.UserService;

@Controller
@RequestMapping("/search")
public class SearchController {
	
	@Autowired
	HttpSession session;
	
	@Autowired
	SearchService searchService;
	
	@Autowired
	UserService userService;
	
	@GetMapping("")
	public String searchTopGet(Model model) throws Exception {
		model.addAttribute("user", new User());
		UserBasicDetail userBD = new UserBasicDetail();
		userBD.setSex((Integer)session.getAttribute("sex"));
		
		List<User> userList = searchService.searchUserAllDetailList((Integer)session.getAttribute("sex"));
		model.addAttribute("userList", userList);
		

		model.addAttribute("holidays", userService.selectHolidayAll());
		model.addAttribute("annual_incomes", userService.selectAnnualIncomeAll());
		model.addAttribute("residences", userService.selectResidenceAll());
		model.addAttribute("occupations", userService.selectOccupationAll());
		model.addAttribute("marital_statuses", userService.selectMaritalStatusAll());
		model.addAttribute("desire_to_marries", userService.selectDesireToMarryAll());
		model.addAttribute("smokings", userService.selectSmokingAll());
		model.addAttribute("housemates", userService.selectHousemateAll());
		
		model.addAttribute("figures", userService.selectFigureAll());
		model.addAttribute("blood_types", userService.selectBloodTypeAll());
		model.addAttribute("birth_places", userService.selectBirthPlaceAll());
		model.addAttribute("educationals", userService.selectEducationalAll());
		model.addAttribute("siblings", userService.selectSiblingAll());
		model.addAttribute("have_childrens", userService.selectHaveChildrenAll());
		model.addAttribute("desire_to_getchilds", userService.selectDesireToGetchildAll());
		model.addAttribute("houseworks", userService.selectHouseworkAll());
		model.addAttribute("time_to_meets", userService.selectTimeToMeetAll());
		model.addAttribute("payments", userService.selectPaymentAll());
		model.addAttribute("sociabilities", userService.selectSociabilityAll());
		model.addAttribute("alcohols", userService.selectAlcoholAll());
		model.addAttribute("vaccinations", userService.selectVaccinationAll());
		
		return "/search/user_list";
	}
	
	@PostMapping("/")
	public String searchTopPost(@ModelAttribute User user,Model model) throws Exception{
		List<User> userList = searchService.searchUserAllDetailListDetail(user);
		model.addAttribute("userList", userList);
		
		model.addAttribute("holidays", userService.selectHolidayAll());
		model.addAttribute("annual_incomes", userService.selectAnnualIncomeAll());
		model.addAttribute("residences", userService.selectResidenceAll());
		model.addAttribute("occupations", userService.selectOccupationAll());
		model.addAttribute("marital_statuses", userService.selectMaritalStatusAll());
		model.addAttribute("desire_to_marries", userService.selectDesireToMarryAll());
		model.addAttribute("smokings", userService.selectSmokingAll());
		model.addAttribute("housemates", userService.selectHousemateAll());
		
		model.addAttribute("figures", userService.selectFigureAll());
		model.addAttribute("blood_types", userService.selectBloodTypeAll());
		model.addAttribute("birth_places", userService.selectBirthPlaceAll());
		model.addAttribute("educationals", userService.selectEducationalAll());
		model.addAttribute("siblings", userService.selectSiblingAll());
		model.addAttribute("have_childrens", userService.selectHaveChildrenAll());
		model.addAttribute("desire_to_getchilds", userService.selectDesireToGetchildAll());
		model.addAttribute("houseworks", userService.selectHouseworkAll());
		model.addAttribute("time_to_meets", userService.selectTimeToMeetAll());
		model.addAttribute("payments", userService.selectPaymentAll());
		model.addAttribute("sociabilities", userService.selectSociabilityAll());
		model.addAttribute("alcohols", userService.selectAlcoholAll());
		model.addAttribute("vaccinations", userService.selectVaccinationAll());
		
		model.addAttribute("user", user);
		
		return "/search/user_list";
	}
	

}
