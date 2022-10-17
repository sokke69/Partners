package com.example.app.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.app.domain.User;
import com.example.app.domain.UserBasicDetail;
import com.example.app.service.MatchingService;
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
	
	@Autowired
	MatchingService matchingService;
	
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
		
		System.out.println("educational : " + user.getUserFD().getEducational());
		
		if (user.getUserRD().getResidence() == 0) {
			user.getUserRD().setResidence(null);
		}
		if (user.getUserBD().getAgeMin() == 0) {
			user.getUserBD().setAgeMin(null);
		}
		if (user.getUserBD().getAgeMax() == 0) {
			user.getUserBD().setAgeMax(null);
		}
		if (user.getUserRD().getHeightMin() == 0) {
			user.getUserRD().setHeightMin(null);
		}
		if (user.getUserRD().getHeightMax() == 0) {
			user.getUserRD().setHeightMax(null);
		}
		if (user.getUserFD().getFigure() == 1) {
			user.getUserFD().setFigure(null);
		}
		if (user.getUserRD().getOccupation() == 1) {
			user.getUserRD().setOccupation(null);
		}
		if (user.getUserRD().getAnnualIncomeMin() == 0) {
			user.getUserRD().setAnnualIncomeMin(null);
		}
		if (user.getUserRD().getAnnualIncomeMax() == 0) {
			user.getUserRD().setAnnualIncomeMax(null);
		}
		if (user.getUserRD().getHoliday() == 1) {
			user.getUserRD().setHoliday(null);
		}
		if (user.getUserFD().getEducational() == 1) {
			user.getUserFD().setEducational(null);
		}
		if (user.getUserFD().getBirthPlace() == 0) {
			user.getUserFD().setBirthPlace(null);
		}
		if (user.getUserRD().getHousemate() == 1) {
			user.getUserRD().setHousemate(null);
		}
		if (user.getUserFD().getSociability() == 1) {
			user.getUserFD().setSociability(null);
		}
		if (user.getUserRD().getSmoking() == 1) {
			user.getUserRD().setSmoking(null);
		}
		if (user.getUserFD().getAlcohol() == 1) {
			user.getUserFD().setAlcohol(null);
		}
		if (user.getUserRD().getDesireToMarry() == 1) {
			user.getUserRD().setDesireToMarry(null);
		}
		if (user.getUserFD().getDesireToGetchild() == 1) {
			user.getUserFD().setDesireToGetchild(null);
		}
		if (user.getUserFD().getHousework() == 1) {
			user.getUserFD().setHousework(null);
		}
		if (user.getUserRD().getMaritalStatus() == 1) {
			user.getUserRD().setMaritalStatus(null);
		}
		if (user.getUserFD().getHaveChildren() == 1) {
			user.getUserFD().setHaveChildren(null);
		}
		if (user.getUserFD().getTimeToMeet() == 1) {
			user.getUserFD().setTimeToMeet(null);
		}
		if (user.getUserFD().getPayment() == 1) {
			user.getUserFD().setPayment(null);
		}
		
		
		
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
	
	@GetMapping("/user/{id}")
	public String userGet(@PathVariable("id") Integer partnersId,Model model) throws Exception {
		Integer myId = (Integer) session.getAttribute("myId");
		System.out.println("myId : " + myId);
		Integer checkRowOfMe = matchingService.checkRowOfMe((Integer) session.getAttribute("myId"), partnersId);
		System.out.println("checkRowOfMe : " + checkRowOfMe);
		if (checkRowOfMe == 1) {
			if (matchingService.checkSendedNiceOfMe(myId, partnersId) == 1) {
				System.out.println("checkSendedNiceOfMe : " + matchingService.checkSendedNiceOfMe(myId, partnersId));
				session.setAttribute("matched", 1);
			}
		}
		User user = userService.getUserById(partnersId);
		model.addAttribute("user", user);
		
		return "/search/user";
		
	}
	
	@PostMapping("/user/{id}")
	public String userPost(@PathVariable("id") Integer partnersId,@ModelAttribute("user") User user,Model model) throws Exception {
		
		Integer myId = (Integer) session.getAttribute("myId");
		
		if (user.getNiceStatus() == 1) {
			Integer checkRowOfMe = matchingService.checkRowOfMe((Integer) session.getAttribute("myId"), partnersId);
			Integer checkRowOfPartners = matchingService.checkRowOfPartners(partnersId, myId);

			if (checkRowOfMe == 0) {
				matchingService.createRowOfMe(myId, partnersId);
			}
			matchingService.addSendedNiceOfMe(myId, partnersId);
			
			
			if (checkRowOfPartners == 0) {
				matchingService.createRowOfPartners(partnersId, myId);
			}
			matchingService.addReceivedNiceOfPartners(partnersId, myId);
			
		}
		
		return "/search/user";
	}

}
