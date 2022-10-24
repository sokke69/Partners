package com.example.app.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.example.app.domain.MatchingUser;
import com.example.app.domain.Message;
import com.example.app.domain.User;
import com.example.app.domain.UserBasicDetail;
import com.example.app.domain.UserFreeDetail;
import com.example.app.domain.UserRequiredDetail;
import com.example.app.domain.UserText;
import com.example.app.service.MatchingService;
import com.example.app.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	UserService userService;
	
	@Autowired
	MatchingService matchingService;
	
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
		
		Integer myId = (Integer) session.getAttribute("myId");
		System.out.println("myId : " + myId);
		Integer likePoint = userService.checkLikePoint(myId);
		User user = userService.getUserById(myId);
		session.setAttribute("user_name", user.getUserBD().getName());
		session.setAttribute("likePoint", likePoint);
		
		List<Integer> checkNotMatchingAndReceivedNiceOfMe = matchingService.checkNotMatchingAndReceivedNiceOfMineIngtegerList(myId);
		System.out.println("checkNotMatchingAndReceivedNiceOfMe.size() : " + checkNotMatchingAndReceivedNiceOfMe.size());
		if (checkNotMatchingAndReceivedNiceOfMe.size() > 0) {
			session.setAttribute("newReceivedNice", 1);
		} else if (checkNotMatchingAndReceivedNiceOfMe.size() == 0 ) {
			session.setAttribute("newReceivedNice", 0);
		}
		
		
		Integer readAndChecked = matchingService.checkReadAndChecked(myId);
		if (readAndChecked > 0) {
			session.setAttribute("newMessage", 1);
		} else if (readAndChecked == 0) {
			session.setAttribute("newMessage", 0);
		}
		
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
	
	@GetMapping("/newReceivedNice")
	public String newReceivedNiceGet(Model model) throws Exception {
		
		Date todayDate = new Date();
		SimpleDateFormat fmt = new SimpleDateFormat("yMMddHHmmss");
		String today = fmt.format(todayDate);
		model.addAttribute("today",today);
		
		Integer myId = (Integer) session.getAttribute("myId");
		List<User> newReceivedNiceList = matchingService.newReceivedNiceList(myId);
		model.addAttribute("newReceivedNiceList", newReceivedNiceList);
		
		return "/user/new_received_nice";
		
	}
	
	@PostMapping("/newReceivedNice")
	public String newReceivedNicePost() {
		return "redirect:/user/newReceivedNice";
	}
	
	@GetMapping("/matchingList")
	public String matchingListGet(Model model) throws Exception {
		
		Integer myId = (Integer) session.getAttribute("myId");
		System.out.println("myId : " + myId);
		
		Date todayDate = new Date();
		SimpleDateFormat fmt = new SimpleDateFormat("yMMddHHmmss");
		SimpleDateFormat fmtYMD = new SimpleDateFormat("yMMdd");
		SimpleDateFormat fmtMD = new SimpleDateFormat("MM月dd日");
		String today = fmt.format(todayDate);
		model.addAttribute("today",today);
		
		matchingService.updateNewMessage(myId, 0);
		matchingService.updateReadInfo(myId);
		
		// 未読のステータスを持っているパートナーID一覧取得
		List<Integer> notReadUsers = matchingService.getNotReadUser(myId);
		System.out.println("notReadUsers : " + notReadUsers);
		
		
		// 上の一覧のパートナーの未読メッセージ数を取得し、マッチングテーブルをアップデート
		for(Integer partnersId : notReadUsers) {
			Integer countNotRead = matchingService.getCountNotReadByUser(myId, partnersId);
			
			System.out.println("試行ID : " + partnersId);
			System.out.println("countNotRead : " + countNotRead);
			matchingService.updateNotReadMessage(myId, partnersId, countNotRead);
		}
		
		//List<MatchingUser> matchingList = matchingService.checkMatchingList(myId);
		List<Integer> matchingList = matchingService.getMatchingWith(myId);
		
		Integer matchingListSize = matchingList.size();
		System.out.println("matchingList.size() : " + matchingListSize);
		
		String name = null;
		Integer img = null;
		Integer notReadMessage = null;
		String latestMessage = null;
		Date latestMessageTime = null;
		
		// 今日のDateの時間部分を0に変更
		todayDate = cutTime(todayDate);
		
		// 今日含め7日前までのDate取得
		List<Date> oneWeek = oneWeek(todayDate);
		for(int j=0; j <= 6 ; j++) {
				System.out.println(oneWeek.get(j));
		}
		
		List<MatchingUser> matchingUser = new ArrayList<MatchingUser>();
		
		for(int i = 0; i <= matchingListSize-1 ; i++) {
			System.out.println("------- 試行" + (i+1) + "回目 --------");
			MatchingUser user = new MatchingUser();
			Integer partnersId = matchingList.get(i);
			
			name = matchingService.getUserName(partnersId);
			img = matchingService.getImg(partnersId);
			notReadMessage = matchingService.getNotReadMessage(myId, partnersId);
			latestMessage = matchingService.getLatestMessageByUser(myId, partnersId);
			latestMessageTime = matchingService.getLatestMessageTimeByUser(myId, partnersId);
			System.out.println("latestMessageTime : " + latestMessageTime);
			
			String latestMessageTimeStr = null;
			SimpleDateFormat fmtE = new SimpleDateFormat("E曜日");
			
			// 最新メッセージの時分秒0に
			Date latestMessageTimeCut = cutTime(latestMessageTime);
			// 上のものをyyyyMMddに変換
			String latestMessageTimeCutStr = fmtYMD.format(latestMessageTimeCut);
			// 上のものをint化(計算用)
			Integer latestMessageTimeCutInt = Integer.parseInt(latestMessageTimeCutStr);
			
			System.out.println("最新メッセージ" + latestMessageTimeCutStr);
			
			SimpleDateFormat fmtHHMM = new SimpleDateFormat("HH:mm");
			
			Integer zeroDaysAgo = Integer.parseInt(fmtYMD.format(oneWeek.get(0)));
			
			Integer calcZero = zeroDaysAgo - latestMessageTimeCutInt;
			System.out.println("calcZero : " + calcZero);
			if (calcZero >= 7) {
				latestMessageTimeStr = fmtMD.format(latestMessageTime);
			} else if (calcZero == 6) {
				latestMessageTimeStr = fmtE.format(oneWeek.get(6));
			} else if (calcZero == 5) {
				latestMessageTimeStr = fmtE.format(oneWeek.get(5));
			} else if (calcZero == 4) {
				latestMessageTimeStr = fmtE.format(oneWeek.get(4));
			} else if (calcZero == 3) {
				latestMessageTimeStr = fmtE.format(oneWeek.get(3));
			} else if (calcZero == 2) {
				latestMessageTimeStr = fmtE.format(oneWeek.get(2));
			} else if (calcZero == 1) {
				latestMessageTimeStr = "昨日";
			} else if (calcZero == 0) {
				latestMessageTimeStr = fmtHHMM.format(latestMessageTime);
			}
			
			

			System.out.println("latestMessage : " + latestMessage);
			System.out.println("latestMessageTime : " + latestMessageTime);
			System.out.println("latestMessageTimeStr : " + latestMessageTimeStr);
			
			user.setId(partnersId);
			user.setName(name);
			user.setImg(img);
			user.setNotReadMessage(notReadMessage);
			user.setMessage(latestMessage);
			user.setLatestMessageTime(latestMessageTimeStr);
			user.setToId(partnersId);
			System.out.println(user);
			
			matchingUser.add(i, user);
		}
		
		Integer count = matchingList.size();
		session.setAttribute("countMatching", count);
		model.addAttribute("matchingList", matchingUser);
		return "/user/matching_list";
	}
	
	
	@GetMapping("/favoriteList")
	public String matchingFavoriteGet(Model model) throws Exception {
		
		Date todayDate = new Date();
		SimpleDateFormat fmt = new SimpleDateFormat("yMMddHHmmss");
		String today = fmt.format(todayDate);
		model.addAttribute("today",today);
		
		Integer myId = (Integer) session.getAttribute("myId");
		List<User> favoriteList = matchingService.checkFavoriteList(myId);
		if (favoriteList.size() == 0) {
			session.setAttribute("countFavorite", 0);
		} else {
			session.setAttribute("countFavorite", 1);
		}
		model.addAttribute("favoriteList", favoriteList);
		return "/user/favorite_list";
	}
	
	@GetMapping("/notMatchingAndReceivedNiceList")
	public String notMatchingAndReceivedNiceGet(Model model) throws Exception {
		
		Date todayDate = new Date();
		SimpleDateFormat fmt = new SimpleDateFormat("yMMddHHmmss");
		String today = fmt.format(todayDate);
		model.addAttribute("today",today);
		
		Integer myId = (Integer) session.getAttribute("myId");
		List<User> notMatchingAndReceivedNiceList = matchingService.checkNotMatchingAndReceivedNiceOfMineList(myId);
		Integer count = notMatchingAndReceivedNiceList.size();
		session.setAttribute("countNotMatchingAndReceivedNiceList", count);
		model.addAttribute("notMatchingAndReceivedNiceList", notMatchingAndReceivedNiceList);
		return "/user/not_matching_and_received_nice";
	}
	
	@GetMapping("/notMatchingAndSendedNiceList")
	public String notMatchingAndSendedNiceGet(Model model) throws Exception {
		
		Date todayDate = new Date();
		SimpleDateFormat fmt = new SimpleDateFormat("yMMddHHmmss");
		String today = fmt.format(todayDate);
		model.addAttribute("today",today);
		
		Integer myId = (Integer) session.getAttribute("myId");
		List<User> notMatchingAndSendedNiceList = matchingService.checkNotMatchingAndSendedNiceOfMineList(myId);
		Integer count = notMatchingAndSendedNiceList.size();
		session.setAttribute("countNotMatchingAndSendedNiceList", count);
		model.addAttribute("notMatchingAndSendedNiceList", notMatchingAndSendedNiceList);
		return "/user/not_matching_and_sended_nice";
	}
	
	@GetMapping("/{id}/message/")
	public String messageGet(@PathVariable("id") Integer partnersId,Model model) throws Exception {
		
		// セッション切れが面倒くさいので時間を3時間に。制作が終わったら変える。
		session.setMaxInactiveInterval(10800);
		
		
		Date todayDate = new Date();
		SimpleDateFormat fmt = new SimpleDateFormat("yMMddHHmmss");
		String today = fmt.format(todayDate);
		model.addAttribute("today",today);
		
		Integer myId = (Integer) session.getAttribute("myId");
		 
		List<Message> messageList = matchingService.getMessage(myId, partnersId);
		matchingService.updateCheckedMessage(partnersId, myId);
		matchingService.updateZeroNotReadMessage(myId, partnersId);
		Integer partnersImg = userService.countPartnersImg(partnersId);
		model.addAttribute("partnersImg", partnersImg);
		model.addAttribute("messageList", messageList);
		model.addAttribute("partnersId", partnersId);
		model.addAttribute("myId", myId);
		model.addAttribute("message", new Message());
		return "/user/message";
		
	}
	
	@PostMapping("/{id}/message")
	public String messagePost(@PathVariable("id") Integer partnersId,@ModelAttribute Message message) throws Exception {

		Integer myId = (Integer) session.getAttribute("myId");
		message.setId(null);
		message.setFromId(myId);
		message.setToId(partnersId);
		
		matchingService.sendMessage(message);
		matchingService.updateMatchingsTablesTime(myId, partnersId);
		
		return "redirect:/user/" + partnersId + "/message/";
	}
	
	private boolean haveImage1(Integer id) {
		File image1jpg = new File(UPLOAD_DIRECTORY + id + "/img1.jpg");
		File image1png = new File(UPLOAD_DIRECTORY + id + "/img1.png");
		if (image1jpg.exists() || image1png.exists()) {
			return true;
		}
		return false;
	}
	
	private Date cutTime(Date date) {
		Calendar cal = Calendar.getInstance();
		cal.setTime(date);
		cal.set(Calendar.HOUR_OF_DAY, 0);
		cal.set(Calendar.MINUTE, 0);
		cal.set(Calendar.SECOND, 0);
		cal.set(Calendar.MILLISECOND, 0);
		date = cal.getTime();
		return date;
	}
	
	private List<Date> oneWeek(Date date) {
		List<Date> dates = new ArrayList<>();
		
		Calendar cal = Calendar.getInstance();
		cal.setTime(date);
		
		for(int k = 0; k >= -6; k--) {
			
			if (k == 0) {
				cal.add(Calendar.DAY_OF_MONTH, 0);
			} else {
				cal.add(Calendar.DAY_OF_MONTH, -1);
			}
			date = cal.getTime();
			dates.add(date);
			System.out.println(k + "回目" + date);
		}
		
		return dates;
	}
	
}
