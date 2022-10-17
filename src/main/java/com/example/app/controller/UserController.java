package com.example.app.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.example.app.domain.User;
import com.example.app.domain.UserBasicDetail;
import com.example.app.domain.UserFreeDetail;
import com.example.app.domain.UserRequiredDetail;
import com.example.app.domain.UserText;
import com.example.app.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	UserService userService;
	
	@Autowired
	HttpSession session;
	
	private static final String UPLOAD_DIRECTORY = "C:/Users/zd2L17/pleiades2/workspace/Partners/imgs/";
	//private static final String UPLOAD_DIRECTORY = "D:/pleiades/workspace2/Partners/imgs/";
	
	
	
	
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
			session.setMaxInactiveInterval(1800);
			return "redirect:/user/top";
		}
		return "/invalid_url";
		
	}
	
	@GetMapping("/top")
	public String topGet(Model model) throws Exception{
		if (session.getAttribute("status") == null) {
			return "/invalid";
		}
		
		Integer likePoint = userService.checkLikePoint((Integer) session.getAttribute("myId"));
		System.out.println("myId : " + (Integer) session.getAttribute("myId"));
		System.out.println("likePoint : " + likePoint);
		session.setAttribute("likePoint", likePoint);
		
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
		
		Date todayDate = new Date();
		SimpleDateFormat fmt = new SimpleDateFormat("yMMddHHmmss");
		String today = fmt.format(todayDate);
		model.addAttribute("today",today);
		
		File uploadsDirectory = new File(UPLOAD_DIRECTORY + user.getId());
		File[] fileList = uploadsDirectory.listFiles();
		model.addAttribute("fileList", fileList);
		model.addAttribute("id", user.getId());
		
		session.setAttribute("haveImage", haveImage1(user.getId()));
		
		return "/user/mypage";
	}

	@GetMapping("/mypage/edit")
	public String profileUpdateGet(Model model) throws Exception {
		String loginId = (String) session.getAttribute("login_id");
		User user = new User();
		user = userService.getUserDetailOfNumberByLoginId(loginId);
		model.addAttribute("user", user);
		
		UserRequiredDetail userRD = user.getUserRD();
		UserFreeDetail userFD = user.getUserFD();
		
		File uploadsDirectory = new File(UPLOAD_DIRECTORY + user.getId());
		File[] fileList = uploadsDirectory.listFiles();
		
		Date todayDate = new Date();
		SimpleDateFormat fmt = new SimpleDateFormat("yMMddHHmmss");
		String today = fmt.format(todayDate);
		model.addAttribute("today",today);
		
		model.addAttribute("fileList", fileList);
		model.addAttribute("id", user.getId());
		
		model.addAttribute("holidaySelected", userRD.getHoliday());
		model.addAttribute("annualIncomeSelected", userRD.getAnnualIncome());
		model.addAttribute("residenceSelected", userRD.getResidence());
		model.addAttribute("occupationSelected", userRD.getOccupation());
		model.addAttribute("maritaltatusSelected", userRD.getMaritalStatus());
		model.addAttribute("desireToMarrySelected", userRD.getDesireToMarry());
		model.addAttribute("smokingSelected", userRD.getSmoking());
		model.addAttribute("housemateSelected", userRD.getHousemate());
		model.addAttribute("holidays", userService.selectHolidayAll());
		model.addAttribute("annual_incomes", userService.selectAnnualIncomeAll());
		model.addAttribute("residences", userService.selectResidenceAll());
		model.addAttribute("occupations", userService.selectOccupationAll());
		model.addAttribute("marital_statuses", userService.selectMaritalStatusAll());
		model.addAttribute("desire_to_marries", userService.selectDesireToMarryAll());
		model.addAttribute("smokings", userService.selectSmokingAll());
		model.addAttribute("housemates", userService.selectHousemateAll());
		
		model.addAttribute("figureSelected", userFD.getFigure());
		model.addAttribute("bloodTypeSelected", userFD.getBloodType());
		model.addAttribute("birthPlaceSelected", userFD.getBirthPlace());
		model.addAttribute("educationalSelected", userFD.getEducational());
		model.addAttribute("siblingSelected", userFD.getSibling());
		model.addAttribute("haveChildrenSelected", userFD.getHaveChildren());
		model.addAttribute("desireToGetchildSelected", userFD.getDesireToGetchild());
		model.addAttribute("houseworkSelected", userFD.getHousework());
		model.addAttribute("timeToMeetSelected", userFD.getTimeToMeet());
		model.addAttribute("paymentSelected", userFD.getPayment());
		model.addAttribute("SociabilitySelected", userFD.getSociability());
		model.addAttribute("alcoholSelected", userFD.getAlcohol());
		model.addAttribute("vaccinationSelected", userFD.getVaccination());
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
		
		
		return "/user/profile_update";
	}
	
	@PostMapping("mypage/edit")
	public String profileUpdatePost(@ModelAttribute User user) throws Exception{
		if (!session.getAttribute("status").equals("login") || session.getAttribute("status") == null) {
			return "/invalid";
		}
		
		user.setId((int)session.getAttribute("myId"));
		
		UserBasicDetail userBD = user.getUserBD();
		UserRequiredDetail userRD = user.getUserRD();
		UserFreeDetail userFD = user.getUserFD();
		UserText userT = user.getUserT();
		
		userBD.setId(user.getId());
		userRD.setId(user.getId());
		userFD.setId(user.getId());
		userT.setId(user.getId());
		
		userService.editUserBD(user);
		userService.editUserRD(user);
		userService.editUserFD(user);
		userService.editUserT(user);
			
		return "redirect:/user/mypage";
	}
	
	
	@GetMapping("/mypage/edit/img")
	public String editImgGet(Model model) throws Exception {
		Date todayDate = new Date();
		SimpleDateFormat fmt = new SimpleDateFormat("yMMddHHmmss");
		String today = fmt.format(todayDate);
		model.addAttribute("today",today);
		
		Integer userId = userService.getUserIdByEmail((String)session.getAttribute("login_id"));
		File uploadDirectory = new File(UPLOAD_DIRECTORY + userId);
		try {
			File[] fileList = uploadDirectory.listFiles();
			Integer fileCount = fileList.length;
			model.addAttribute("fileCount", fileCount);
			model.addAttribute("fileList", fileList);
			model.addAttribute("id", userId);
			return "user/img_update";
		} catch (Exception e) {
			model.addAttribute("fileCount", 0);
			model.addAttribute("fileList", null);
			model.addAttribute("id", userId);
			return "user/img_update";
		}
	}
	
	@PostMapping("mypage/edit/img/")
	public String editImgPost(@RequestParam MultipartFile upfile, Model model) throws Exception {
		if (!upfile.isEmpty()) {
			User user = userService.getUserByLoginId((String)session.getAttribute("login_id"));			
			File uploadDirectory = new File(UPLOAD_DIRECTORY + user.getId());
			
			if (!uploadDirectory.exists()) {
				uploadDirectory.mkdir();
			}
			
			File[] fileList = uploadDirectory.listFiles();
			Integer fileCount = fileList.length;
			File dest = new File(UPLOAD_DIRECTORY + user.getId() + "/img" + (fileCount+1) + ".jpg");
			upfile.transferTo(dest);
			
			System.out.println((Integer) session.getAttribute("myId"));
			System.out.println(fileCount+1);
			userService.updateImage((Integer) session.getAttribute("myId"), (fileCount+1));
			
			return "user/img_update_done";
			
		} else {
			return "redirect:/mypage/edit/img";
		}
	}

	@GetMapping("/mypage/edit/img/delete/{number}")
	public String deleteImageGet(@PathVariable("number") Integer number,Model model) throws Exception{
		model.addAttribute("imgNumber", number);
		Date todayDate = new Date();
		SimpleDateFormat fmt = new SimpleDateFormat("yMMddHHmmss");
		String today = fmt.format(todayDate);
		model.addAttribute("today",today);
		return "user/img_delete";
	}
	
	@PostMapping("/mypage/edit/img/delete/{number}")
	public String deleteImagePost(@PathVariable("number") Integer number) throws Exception{
		User user = userService.getUserByLoginId((String)session.getAttribute("login_id"));			
		File directory = new File(UPLOAD_DIRECTORY + user.getId());
		File deleteFile = new File(UPLOAD_DIRECTORY + user.getId() + "/img" + number + ".jpg");
		deleteFile.delete();
		
		File[] fileList = directory.listFiles();
		Integer fileCount = fileList.length;
		userService.updateImage((Integer) session.getAttribute("myId"),(fileCount));
		return "redirect:/user/mypage/edit/img";
	}
	
	private boolean haveImage1(Integer id) {
		File image1jpg = new File(UPLOAD_DIRECTORY + id + "/img1.jpg");
		File image1png = new File(UPLOAD_DIRECTORY + id + "/img1.png");
		if (image1jpg.exists() || image1png.exists()) {
			return true;
		}
		return false;
	}
	
}
