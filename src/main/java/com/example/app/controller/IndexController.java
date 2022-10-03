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

	@GetMapping("/index")
	public String index() {
		return "index";
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

}
