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
		Integer checkRowOfMe = matchingService.checkRowOfMe((Integer) session.getAttribute("myId"), partnersId);
		Integer checkSendedNiceOfMe = matchingService.checkSendedNiceOfMe(myId, partnersId);
		Integer checkMatchingOfMe = matchingService.checkMatchingOfMe(myId, partnersId);
		Integer checkMatchingOfPartners = matchingService.checkMatchingOfPartners(partnersId, myId);
		System.out.println("checkRowOfMe : " + checkRowOfMe);
		System.out.println("checkSendedNiceOfMe : " + checkSendedNiceOfMe);
		System.out.println("checkMatchingOfMe : " + checkMatchingOfMe);
		System.out.println("checkMatchingOfPartners : " + checkMatchingOfPartners);
		
		// 自分のマッチングテーブルに対象IDのrowがあるか確認
		if (checkRowOfMe == 1) {
			// 1(ある)なら更に自分がいいねを送っているか確認。
			if (checkSendedNiceOfMe == 1) {
				// 1(ある)ならsession.sendedNiceに1を格納(Thymelefeで使用)
				session.setAttribute("sendedNice", 1);
			// 0(ない)ならsession.sendedNiceに0を格納(Thymelefeで使用)
			} else if (checkSendedNiceOfMe == 0) {
				session.setAttribute("sendedNice", 0);
			}
			
			// お互いのマッチングテーブルのmatchingを確認
			// 1(成立している)ならsession.matchingに1を格納(Thymelefeで使用)
			if (checkMatchingOfMe == 1 && checkMatchingOfPartners == 1) {
				session.setAttribute("matching", 1);
			} else {
				session.setAttribute("matching", 0);
			}
			
		// 0(ない)ならsession.sendedNiceに0を格納(Thymelefeで使用)
		} else if (checkRowOfMe == 0) {
			session.setAttribute("sendedNice", 0);
			session.setAttribute("matching", 0);
		}
		
		
		
		
		User user = userService.getUserById(partnersId);
		model.addAttribute("user", user);
		
		return "/search/user";
		
	}
	
	@PostMapping("/user/{id}")
	public String userPost(@PathVariable("id") Integer partnersId,@ModelAttribute("user") User user,Model model) throws Exception {
		
		Integer myId = (Integer) session.getAttribute("myId");
		
		// いいねボタンを押したときの動作
		if (user.getNiceStatus() == 1) {
			
			// 自分のマッチングテーブルに対象IDのrowがあるか確認
			// 0(ない)なら対象IDのrow作成
			Integer checkRowOfMe = matchingService.checkRowOfMe((Integer) session.getAttribute("myId"), partnersId);
			if (checkRowOfMe == 0) {
				matchingService.createRowOfMe(myId, partnersId);
			}
			// 自分のマッチングテーブルの対象IDのsended_niceに1(sended)を格納
			matchingService.addSendedNiceOfMe(myId, partnersId);
			
			// 対象IDのマッチングテーブルに自分のIDのrowがあるか確認
			// 0(ない)なら自分のrow作成
			Integer checkRowOfPartners = matchingService.checkRowOfPartners(partnersId, myId);
			if (checkRowOfPartners == 0) {
				matchingService.createRowOfPartners(partnersId, myId);
			}
			// 対象のマッチングテーブルの自分のsended_niceに1(sended)を格納
			matchingService.addReceivedNiceOfPartners(partnersId, myId);
			
			// 自分のマッチングテーブルに対象IDからのReceivedNiceがきているか確認
			// 0 or null(きていない)なら自分のいいねポイントから1減らす
			Integer checkReceivedNiceOfMe = matchingService.checkReceivedNiceOfMe(myId, partnersId);
			if (checkReceivedNiceOfMe == 0) {
				Integer oldLikePoint = (Integer) session.getAttribute("likePoint");
				Integer newLikePoint = oldLikePoint-1;
				session.setAttribute("likePoint", newLikePoint);
				userService.useLikePoint(myId, newLikePoint);
			}
			
			// 1(きている)ならマッチング成立
			// お互いのマッチングテーブルのmatchingに1(matching)を格納
			if (checkReceivedNiceOfMe == 1) {
				matchingService.addMatchingOfMe(myId, partnersId);
				matchingService.addMatchingOfPartners(myId, partnersId);
			}
			
		}
		
		return "redirect:/search/user/" + partnersId;
	}

}
