package com.example.app.controller;

import java.util.List;
import java.util.UUID;

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

import com.example.app.domain.User;
import com.example.app.service.UserService;

@Controller
public class IndexController {

	@Autowired
	HttpSession session;

	@Autowired
	JavaMailSender mailSender;

	@Autowired
	UserService userService;
	
	@GetMapping("/")
	public String startGet() {
		if (session.getAttribute("status") == null) {
			return "/index";
		} else if (session.getAttribute("status").equals("login")) {
			return "/user/top";
		}
		return "/";
	}

	@GetMapping("/index")
	public String indexGet() {
		if (session.getAttribute("status") == null) {
			return "/index";
		} else if (session.getAttribute("status").equals("login")) {
			return "/user/top";
		}
		return "/index";
	}

	@GetMapping("/regist")
	public String registTopGet(Model model) {
		model.addAttribute("user", new User());
		session.removeAttribute("error_title");
		session.removeAttribute("error_detail");
		return "regist";
	}

	@PostMapping("/regist")
	public String registTopPost(@Valid @ModelAttribute("user") User user, 
			Errors errors,
			Model model) throws Exception {

		List<String> emailbyDB = userService.selectEmail();
		String email = user.getLoginId();

		if (errors.hasErrors()) {
			model.addAttribute("user", user);
			return "regist";
		} else if (emailbyDB.contains(email)) {
			errors.rejectValue("loginId", "error.this_email_is_registered");
			model.addAttribute("user", user);
			return "regist";
		}
		
		session.setAttribute("regist_email", email);

		UUID uuid = UUID.randomUUID();
		String uuidStr = uuid.toString();
		uuidStr = uuidStr.replace("-", "");
		session.setAttribute("regist_url", uuidStr);
		session.setAttribute("email", "sended");

		MimeMessage mimeMsg = mailSender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(mimeMsg, true);

		helper.setFrom("sokke.school@gmail.com");
		helper.setTo(email);
		helper.setSubject("[Partners] 新規会員登録");
		helper.setText("以下のアドレスから登録を行ってください\r\n" + "\r\n" + "http://localhost:8080/regist/regist_user/" + uuidStr
				+ "\r\n" + "※ URLの有効期限は10分です。");
		mailSender.send(mimeMsg);

		session.setMaxInactiveInterval(600);
		

		return "sended_mail";

	}
	
	
	@GetMapping("/login")
	public String loginGet(Model model) {
		model.addAttribute("user", new User());
		session.removeAttribute("error_title");
		session.removeAttribute("error_detail");
		return "login";
	}
	
	@PostMapping("/login")
	public String loginPost(@Valid @ModelAttribute("user") User user, 
			Errors errors,
			Model model) throws Exception {

		List<String> emailbyDB = userService.selectEmail();
		String email = user.getLoginId();

		if (errors.hasErrors()) {
			model.addAttribute("user", user);
			return "regist";
		} else if (!emailbyDB.contains(email)) {
			errors.rejectValue("loginId", "error.this_email_isnot_registered");
			model.addAttribute("user", user);
			return "regist";
		}
		
		session.setAttribute("send_email", email);

		UUID uuid = UUID.randomUUID();
		String uuidStr = uuid.toString();
		uuidStr = uuidStr.replace("-", "");
		session.setAttribute("login_url", uuidStr);
		session.setAttribute("email", "sended");

		MimeMessage mimeMsg = mailSender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(mimeMsg, true);

		helper.setFrom("sokke.school@gmail.com");
		helper.setTo(email);
		helper.setSubject("[Partners] ログインメール");
		helper.setText("以下のアドレスでマイページへ移動します\r\n" + "\r\n" + "http://localhost:8080/user/login/" + uuidStr
				+ "\r\n" + "※ URLの有効期限は10分です。");
		mailSender.send(mimeMsg);

		session.setMaxInactiveInterval(600);
		

		return "sended_mail";

	}
	
	@GetMapping("/logout")
	public String logoutGet() throws Exception{
		session.invalidate();
		return "redirect:/index";
	}

}
