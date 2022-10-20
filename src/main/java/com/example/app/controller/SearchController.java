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
import com.example.app.domain.UserFreeDetail;
import com.example.app.domain.UserImage;
import com.example.app.domain.UserRequiredDetail;
import com.example.app.domain.UserText;
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
	public String searchTopGet(Model model,User user,UserRequiredDetail userRD,
			UserBasicDetail userBD,
			UserFreeDetail userFD, UserImage userI,
			UserText userT) throws Exception {

		userBD.setSex((Integer)session.getAttribute("sex"));
		user.setUserBD(userBD);;
		System.out.println("getする際sessionからuser.userBD.sexに格納した値 : " + user.getUserBD().getSex());
		List<User> userList = searchService.searchUserAllDetailList(user);
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
	public String searchTopPost(@ModelAttribute User user,Model model, UserRequiredDetail userRD,
			UserBasicDetail userBD,
			UserFreeDetail userFD, UserImage userI,
			UserText userT) throws Exception{
		
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
		Integer checkMatchingOfMine = matchingService.checkMatchingOfMine(myId, partnersId);
		Integer checkMatchingOfPartners = matchingService.checkMatchingOfPartners(partnersId, myId);
		
		// 自分のマッチングテーブルに対象IDのrowがあるか確認
		Integer checkRowOfMine = matchingService.checkRowOfMine((Integer) session.getAttribute("myId"), partnersId);
		
		// 自分のマッチングテーブルに対象IDのrowが0(ない)なら
		if (checkRowOfMine == 0) {
			// 対象IDのrow作成
			matchingService.createRowOfMine(myId, partnersId);
		}
		// 対象IDのマッチングテーブルに自分のIDのrowがあるか確認
		Integer checkRowOfPartners = matchingService.checkRowOfPartners(partnersId, myId);
		// 対象IDのマッチングテーブルに自分のIDのrowが0(ない)なら
		if (checkRowOfPartners == 0) {
			// 自分のrow作成
			matchingService.createRowOfPartners(partnersId, myId);
		}
		
		
		
		
		// 自分のマッチングテーブルに対象IDのrowが1(ある)なら
		if (checkRowOfMine == 1) {
			
			// 自分がいいねを送っているか確認
			Integer checkSendedNiceOfMine = matchingService.checkSendedNiceOfMine(myId, partnersId);
			// 相手からいいねが来ているか確認
			Integer checkReceivedNiceOfMine = matchingService.checkReceivedNiceOfMine(myId, partnersId);
			// 自分がいいねを送っている
			if (checkSendedNiceOfMine == 1) {
				session.setAttribute("sendedNice", 1);
			// 自分がいいねを送ってなく、かつ相手からいいねが来ている
			} else if (checkSendedNiceOfMine == 0 && checkReceivedNiceOfMine == 1) {
				session.setAttribute("receivedNice", 1);
				session.setAttribute("sendedNice", 0);
				// 訪問した場合の処理
				Integer checkCheckedReceivedNice = matchingService.checkCheckedReceivedNice(myId, partnersId);
				Integer checkNotMatchingAndReceivedNiceOfMine = matchingService.checkNotMatchingAndReceivedNiceOfMine(myId, partnersId, checkCheckedReceivedNice);
				if (checkNotMatchingAndReceivedNiceOfMine == 0) {
					matchingService.updateCheckedReceivedNiceOfMine(myId, partnersId);
				}
			// 自分がいいねを送ってなく、かつ相手からもいいねが来ていない
			} else if (checkSendedNiceOfMine == 0) {
				session.setAttribute("receivedNice", 0);
				session.setAttribute("sendedNice", 0);
			}
			
			
			
			// 自分がきになるを送っているか確認
			Integer checkFavorite = matchingService.checkFavorite(myId, partnersId);
			// 自分がきになるを送っている
			if (checkFavorite == 1) {
				session.setAttribute("favorite", 1);
			} else if (checkFavorite == 0) {
				session.setAttribute("favorite", 0);
			}
			
			
			// お互いのマッチングテーブルのmatchingを確認
			// 成立しているならsession.matchingに1を格納(Thymelefeで使用)
			if (checkMatchingOfMine == 1 && checkMatchingOfPartners == 1) {
				session.setAttribute("matching", 1);
			} else {
				session.setAttribute("matching", 0);
			}	
		// 自分のマッチングテーブルに対象IDのrowないならsession.sendedNiceに0を格納(Thymelefeで使用)
		} else if (checkRowOfMine == 0) {
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
			
			// 自分のマッチングテーブルの対象IDのsended_niceに1(sended)を格納
			matchingService.addSendedNiceOfMine(myId, partnersId);
			
			// 対象のマッチングテーブルの自分のsended_niceに1(sended)を格納
			matchingService.addReceivedNiceOfPartners(partnersId, myId);
			
			// 自分のマッチングテーブルに対象IDからのReceivedNiceがきているか確認
			// 0(きていない)なら自分のいいねポイントから1減らす
			Integer checkReceivedNiceOfMine = matchingService.checkReceivedNiceOfMine(myId, partnersId);
			if (checkReceivedNiceOfMine == 0) {
				Integer oldLikePoint = (Integer) session.getAttribute("likePoint");
				Integer newLikePoint = oldLikePoint-1;
				session.setAttribute("likePoint", newLikePoint);
				userService.useLikePoint(myId, newLikePoint);
			}
			
			// 1(きている)ならマッチング成立
			// お互いのマッチングテーブルのmatchingに1(matching)を格納
			if (checkReceivedNiceOfMine == 1) {
				matchingService.addMatchingOfMine(myId, partnersId);
				matchingService.addMatchingOfPartners(myId, partnersId);
			}

		}
		
		//気になるを押したときの動作
		System.out.println("user.getFavoriteStatus() : " + user.getFavoriteStatus());
		if (user.getFavoriteStatus() == 1) {
				matchingService.addFavorite(myId, partnersId);
		} else if (user.getFavoriteStatus() == 3) {
				matchingService.cancelFavorite(myId, partnersId);
		}
		
		return "redirect:/search/user/" + partnersId;
	}

}
