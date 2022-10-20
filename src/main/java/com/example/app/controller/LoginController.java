package com.example.app.controller;

import java.time.LocalDate;
import java.time.ZoneId;
import java.util.List;
import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.app.domain.EmailSended;
import com.example.app.domain.LoginRandomInt;
import com.example.app.domain.User;
import com.example.app.domain.UserBasicDetail;
import com.example.app.service.UserService;

@Controller
@RequestMapping("/login")
public class LoginController {
	
	@Autowired
	HttpSession session;
	
	@Autowired
	JavaMailSender mailSender;

	@Autowired
	UserService userService;
	
	@GetMapping("/login")
	public String loginGet(Model model) {
		model.addAttribute("user", new User());
		session.removeAttribute("error_title");
		session.removeAttribute("error_detail");
		return "login/login";
	}
	
	@PostMapping("/login")
	public String loginPost(@Valid @ModelAttribute("user") User user, 
			Errors errors,
			Model model) throws Exception {
		
		List<String> emailbyDB = userService.selectEmail();
		String emailTo = user.getLoginId();

		if (errors.hasErrors()) {
			model.addAttribute("user", user);
			return "login/login";
		} else if (!emailbyDB.contains(emailTo)) {
			errors.rejectValue("loginId", "error.this_email_isnot_registered");
			model.addAttribute("user", user);
			return "login/login";
		}
		
		session.setAttribute("send_email", emailTo);
		
		Random random = new Random();
		int random4of1 = random.nextInt(10);
		int random4of2 = random.nextInt(10);
		if (random4of2 == random4of1) {
			random4of2 = random.nextInt(10);
		}
		int random4of3 = random.nextInt(10);
		if (random4of3 == random4of2 || random4of3 == random4of1) {
			random4of3 = random.nextInt(10);
		}
		int random4of4 = random.nextInt(10);
		if (random4of4 == random4of1 || random4of4 == random4of2 || random4of4 == random4of3) {
			random4of4 = random.nextInt(10);
		}
		
		int[] randomIntArray = {random4of1, random4of2, random4of3, random4of4};
		
		int random6of1 = randomIntArray[random.nextInt(randomIntArray.length-1)];
		int random6of2 = randomIntArray[random.nextInt(randomIntArray.length-1)];
		int random6of3 = randomIntArray[random.nextInt(randomIntArray.length-1)];
		int random6of4 = randomIntArray[random.nextInt(randomIntArray.length-1)];
		int random6of5 = randomIntArray[random.nextInt(randomIntArray.length-1)];
		int random6of6 = randomIntArray[random.nextInt(randomIntArray.length-1)];
		
		session.setAttribute("random6of1", random6of1);
		session.setAttribute("random6of2", random6of2);
		session.setAttribute("random6of3", random6of3);
		session.setAttribute("random6of4", random6of4);
		session.setAttribute("random6of5", random6of5);
		session.setAttribute("random6of6", random6of6);
		
		MimeMessage mimeMsg = mailSender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(mimeMsg, true);
		
		String emailFrom = "sokke.school@gmail.com";
		
		
		helper.setFrom(emailFrom);
		helper.setTo(emailTo);
		helper.setSubject("[Partners] 認証コードをご確認ください");
		helper.setText("認証コード\r\n" + "\r\n"
				+ random6of1 + random6of2 + random6of3 + random6of4 + random6of5 + random6of6 + "\r\n" 
				+ "※ 有効期限：発行より10分" + "\r\n" 
				+ emailTo + "があなたのメールアドレスであることの認証が必要です。上記の認証コードを入力してログインを完了しましょう。" + "\r\n" 
				+ "※ 本メールにお心当たりがない場合は破棄していただけますようお願いいたします");
		mailSender.send(mimeMsg);
		session.setAttribute("email", "sended");
		
		session.setAttribute("emailFrom", emailFrom);
		session.setAttribute("emailTo", emailTo);

		session.setMaxInactiveInterval(600);
		

		return "redirect:/login/sendedLoginEmail";

	}
	
	@GetMapping("/sendedLoginEmail")
	public String sendedLoginEmail() {
		EmailSended emailSended = new EmailSended();
		emailSended.setEmailFrom((String)session.getAttribute("emailFrom"));
		emailSended.setEmailTo((String)session.getAttribute("emailTo"));
		return "login/sended_login_email";
	}
	
	@GetMapping("loginAuth")
	public String loginAuthGet(Model model) {
		String status = (String) session.getAttribute("email");
		if (!status.equals("sended")) {
			session.setAttribute("error_title", "このページは開けません");
			session.setAttribute("error_detail", "申し訳ございませんがトップページまでお戻りください");
			return "redirect:/error";
		}
		model.addAttribute("loginRandomInt", new LoginRandomInt());
		session.removeAttribute("authFailed");
		return "login/auth";
	}
	
	@PostMapping("loginAuth")
	public String loginAuthPost(@ModelAttribute("loginRandomInt") LoginRandomInt loginRandomInt) throws Exception {
		if (loginRandomInt.getRandom6of1() != (int)session.getAttribute("random6of1")) {
			session.setAttribute("authFailed", "");
			return "login/auth";
		} else if (loginRandomInt.getRandom6of2() != (int)session.getAttribute("random6of2")) {
			session.setAttribute("authFailed", "");
			return "login/auth";
		} else if (loginRandomInt.getRandom6of3() != (int)session.getAttribute("random6of3")) {
			session.setAttribute("authFailed", "");
			return "login/auth";
		} else if (loginRandomInt.getRandom6of4() != (int)session.getAttribute("random6of4")) {
			session.setAttribute("authFailed", "");
			return "login/auth";
		} else if (loginRandomInt.getRandom6of5() != (int)session.getAttribute("random6of5")) {
			session.setAttribute("authFailed", "");
			return "login/auth";
		} else if (loginRandomInt.getRandom6of6() != (int)session.getAttribute("random6of6")) {
			session.setAttribute("authFailed", "");
			return "login/auth";
		}
		
		session.removeAttribute("Random6of1");
		session.removeAttribute("Random6of2");
		session.removeAttribute("Random6of3");
		session.removeAttribute("Random6of4");
		session.removeAttribute("Random6of5");
		session.removeAttribute("Random6of6");
		session.removeAttribute("email");
		
		User user = userService.getUserByLoginId((String)session.getAttribute("emailTo"));
		
		session.setAttribute("status", "login");
		session.setAttribute("login_id", user.getLoginId());
		session.setAttribute("myId", user.getId());
		session.setAttribute("user_name", user.getUserBD().getName());
		
		if (user.getUserBD().getSexStr().equals("男性")) {
			session.setAttribute("sex", 1);			
		} else if (user.getUserBD().getSexStr().equals("女性")) {
			session.setAttribute("sex", 2);			
		}
		
		
		
		session.removeAttribute("emailFrom");
		session.removeAttribute("emailTo");
		
		session.setMaxInactiveInterval(3600);
		
		check_lp_day(user.getId());
		check_lp_month(user.getId());
		
		return "redirect:/user/top";
	}
	
	
	private void check_lp_day(Integer myId) throws Exception {
		UserBasicDetail userBD = userService.getInfoLikePoint(myId);
		
		LocalDate today = LocalDate.now();
		
		LocalDate lastGotDay = userBD.getLasttimeOfGotLikePointDay().toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
		if (today.isAfter(lastGotDay)) {
			Integer oldLikePoint = userBD.getLikePoint();
			
			Integer addedLikePoint = oldLikePoint + 1;
			userService.addLikePointDay(myId, addedLikePoint);
			userService.updateLasttimeGotLikePointDay(myId);
			session.setAttribute("add_like_point_day", "");
		}
		
		
	}
	private void check_lp_month(Integer myId) throws Exception {
		UserBasicDetail userBD = userService.getInfoLikePoint(myId);
		
		LocalDate today = LocalDate.now();
		
		LocalDate lastGotMonth = userBD.getLasttimeOfGotLikePointMonth().toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
		LocalDate lastGotMonthPlus1 = lastGotMonth.plusMonths(1);
		if (!today.isBefore(lastGotMonthPlus1)) {
			Integer oldLikePoint = userBD.getLikePoint();
			
			Integer addedLikePoint = oldLikePoint + 30;
			userService.addLikePointMonth(myId, addedLikePoint);
			userService.updateLasttimeGotLikePointMonth(myId);
			session.setAttribute("add_like_point_month", "");
		}
		
	}
	

}
