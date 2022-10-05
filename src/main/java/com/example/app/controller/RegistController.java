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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.app.domain.User;
import com.example.app.domain.UserBasicDetail;
import com.example.app.domain.UserRequiredDetail;
import com.example.app.mapper.MatchingMapper;
import com.example.app.service.UserServiceImpl;

@Controller
@RequestMapping("/regist")
public class RegistController {
	
	@Autowired
	HttpSession session;
	
	@Autowired
	UserServiceImpl userService;
	
	@Autowired
	MatchingMapper matchingMapper;
	
	/*
	 * @Autowired PasswordEncoder passwordEncoder;
	 */
	
	@Autowired
	JavaMailSender mailSender;
	
	@GetMapping("")
	public String registTopGet(Model model) {
		model.addAttribute("user", new User());
		session.removeAttribute("error_title");
		session.removeAttribute("error_detail");
		return "regist/regist";
	}

	@PostMapping("")
	public String registTopPost(@Valid @ModelAttribute("user") User user, 
			Errors errors,
			Model model) throws Exception {

		List<String> emailbyDB = userService.selectEmail();
		String email = user.getLoginId();

		if (errors.hasErrors()) {
			model.addAttribute("user", user);
			return "regist/regist";
		} else if (emailbyDB.contains(email)) {
			errors.rejectValue("loginId", "error.this_email_is_registered");
			model.addAttribute("user", user);
			return "regist/regist";
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
		

		return "regist/sended_email";

	}
	
	
	@GetMapping("/regist_user/{registUrl}")
	public String registStart(@PathVariable("registUrl") String registUrl) {
		String status = (String) session.getAttribute("email");
		if (!status.equals("sended")) {
			session.setAttribute("error_title", "このページは開けません");
			session.setAttribute("error_detail", "申し訳ございませんがトップページまでお戻りください");
			return "redirect:/error";
		}
		String sessionRegistUrl = (String) session.getAttribute("regist_url");
		if (sessionRegistUrl.equals(sessionRegistUrl)) {
			session.setAttribute("status", "regist");
			return "redirect:/regist/sex";
		}
		return "invalid_url";
		
	}
	
	@GetMapping("/invalid")
	public String invalidUrl() {
		return "regist/invalid";
	}
	
	
	@GetMapping("/sex")
	public String registSexGet(Model model) {
		String status = (String) session.getAttribute("status");
		if (status == "regist") {
			model.addAttribute("userBD", new UserBasicDetail());
			return "regist/sex";
		}
		session.setAttribute("error_title", "このページは開けません");
		session.setAttribute("error_detail", "申し訳ございませんがトップページまでお戻りください");
		return "error";
	}
	
	@PostMapping("/sex")
	public String registSexPost(@Valid @ModelAttribute("userBD") UserBasicDetail userBD,
			Errors errors,
			Model model) {
		if (errors.hasErrors()) {
			model.addAttribute("userBD", userBD);
			return "regist/sex";
		} else {
		session.setAttribute("regist_sex", userBD.getSex());
		return "redirect:/regist/age";
		}
	}
	
	@GetMapping("/age")
	public String registAgeGet(Model model) {
		String status = (String) session.getAttribute("status");
		if (!status.equals("regist")) {
			session.setAttribute("error_title", "このページは開けません");
			session.setAttribute("error_detail", "申し訳ございませんがトップページまでお戻りください");
			return "redirect:/error";
		}
		model.addAttribute("userBD", new UserBasicDetail());
		return "regist/age";
	}
	
	@PostMapping("/age")
	public String registAgePost(@Valid @ModelAttribute("userBD") UserBasicDetail userBD,
			Errors errors,
			Model model) {
		if (errors.hasErrors()) {
			model.addAttribute("userBD", userBD);
			return "regist/age";
		}
		Integer registAge = userBD.getAge();
		session.setAttribute("regist_age", registAge);
		model.addAttribute("userBD", userBD);
		return "redirect:/regist/name";
	}
	
	@GetMapping("/name")
	public String registNameGet(Model model) {
		String status = (String) session.getAttribute("status");
		if (!status.equals("regist")) {
			session.setAttribute("error_title", "このページは開けません");
			session.setAttribute("error_detail", "申し訳ございませんがトップページまでお戻りください");
			return "redirect:/error";
		}
		model.addAttribute("userBD", new UserBasicDetail());
		return "regist/name";
	}
	
	@PostMapping("/name")
	public String registNamePost(@Valid @ModelAttribute("userBD") UserBasicDetail userBD,
			Errors errors,
			Model model) {
		if (errors.hasErrors()) {
			model.addAttribute("userBD", userBD);
			return "regist/name";
		}
		String registName = userBD.getName();
		session.setAttribute("regist_name", registName);
		model.addAttribute("userBD", userBD);
		return "redirect:/regist/height";
	}
	
	@GetMapping("/height")
	public String registHeightGet(Model model) {
		String status = (String) session.getAttribute("status");
		if (!status.equals("regist")) {
			session.setAttribute("error_title", "このページは開けません");
			session.setAttribute("error_detail", "申し訳ございませんがトップページまでお戻りください");
			return "redirect:/error";
		}
		model.addAttribute("user", new User());
		return "regist/height";
	}
	
	@PostMapping("/height")
	public String registHeightPost(@ModelAttribute("user") User user) {
		int registHeight = user.getUserRD().getHeight();
		session.setAttribute("regist_height", registHeight);
		return "redirect:/regist/residence";
	}
	
	@GetMapping("/residence")
	public String registResidenceGet(Model model) throws Exception {
		String status = (String) session.getAttribute("status");
		if (!status.equals("regist")) {
			session.setAttribute("error_title", "このページは開けません");
			session.setAttribute("error_detail", "申し訳ございませんがトップページまでお戻りください");
			return "redirect:/error";
		}
		model.addAttribute("user", new User());
		model.addAttribute("residences", userService.selectResidenceAll());
		return "regist/residence";
	}
	
	@PostMapping("/residence")
	public String registResidencePost(@ModelAttribute("user") User user) {
		int residenceId = user.getUserRD().getResidence();
		session.setAttribute("regist_residence", residenceId);
		return "redirect:/regist/occupation";
	}
	
	@GetMapping("/occupation")
	public String registOccupationGet(Model model) throws Exception {
		String status = (String) session.getAttribute("status");
		if (!status.equals("regist")) {
			session.setAttribute("error_title", "このページは開けません");
			session.setAttribute("error_detail", "申し訳ございませんがトップページまでお戻りください");
			return "redirect:/error";
		}
		model.addAttribute("user", new User());
		model.addAttribute("occupations", userService.selectOccupationAll());
		return "regist/occupation";
	}
	
	@PostMapping("/occupation")
	public String registOccupationPost(@ModelAttribute("urer") User user) {
		int occupationId = user.getUserRD().getOccupation();
		session.setAttribute("regist_occupation", occupationId);
		return "redirect:/regist/annual_income";
	}
	
	@GetMapping("/annual_income")
	public String registAnnualIncomeGet(Model model) throws Exception {
		String status = (String) session.getAttribute("status");
		if (!status.equals("regist")) {
			session.setAttribute("error_title", "このページは開けません");
			session.setAttribute("error_detail", "申し訳ございませんがトップページまでお戻りください");
			return "redirect:/error";
		}
		model.addAttribute("user", new User());
		model.addAttribute("annual_incomes", userService.selectAnnualIncomeAll());
		return "regist/annual_income";
		
	}
	
	@PostMapping("/annual_income")
	public String registAnnualIncomePost(@ModelAttribute("user") User user) {
		int annualIncomeId = user.getUserRD().getAnnualIncome();
		session.setAttribute("regist_annual_income", annualIncomeId);
		return "redirect:/regist/marital_status";
	}
	
	@GetMapping("/marital_status")
	public String registMaritalStatusGet(Model model) throws Exception {
		String status = (String) session.getAttribute("status");
		if (!status.equals("regist")) {
			session.setAttribute("error_title", "このページは開けません");
			session.setAttribute("error_detail", "申し訳ございませんがトップページまでお戻りください");
			return "redirect:/error";
		}
		model.addAttribute("user", new User());
		model.addAttribute("marital_statuses", userService.selectMaritalStatusAll());
		return "regist/marital_status";
	}
	
	@PostMapping("/marital_status")
	public String registMaritalStatusPost(@ModelAttribute("user") User user) {
		int maritalStatusId = user.getUserRD().getMaritalStatus();
		session.setAttribute("regist_marital_status", maritalStatusId);
		return "redirect:/regist/desire_to_marry";
	}
	
	@GetMapping("/desire_to_marry")
	public String registDesireToMarry(Model model) throws Exception {
		String status = (String) session.getAttribute("status");
		if (!status.equals("regist")) {
			session.setAttribute("error_title", "このページは開けません");
			session.setAttribute("error_detail", "申し訳ございませんがトップページまでお戻りください");
			return "redirect:/error";
		}
		model.addAttribute("user", new User());
		model.addAttribute("desire_to_marries", userService.selectDesireToMarryAll());
		return "regist/desire_to_marry";
	}
	
	@PostMapping("/desire_to_marry")
	public String registDesireToMarry(@ModelAttribute("user") User user) {
		int desireToMarryId = user.getUserRD().getDesireToMarry();
		session.setAttribute("regist_desire_to_marry", desireToMarryId);
		return "redirect:/regist/holiday";
	}
	
	@GetMapping("holiday")
	public String holidayGet(Model model) throws Exception {
		String status = (String) session.getAttribute("status");
		if (!status.equals("regist")) {
			session.setAttribute("error_title", "このページは開けません");
			session.setAttribute("error_detail", "申し訳ございませんがトップページまでお戻りください");
			return "redirect:/error";
		}
		model.addAttribute("user", new User());
		model.addAttribute("holidays", userService.selectHolidayAll());
		return "regist/holiday";
	}
	
	@PostMapping("holiday")
	public String holidayPost(@ModelAttribute("user") User user) {
		int holidayId = user.getUserRD().getHoliday();
		session.setAttribute("regist_holiday", holidayId);
		return "redirect:/regist/smoking";
	}
	
	@GetMapping("smoking")
	public String smokingGet(Model model) throws Exception {
		String status = (String) session.getAttribute("status");
		if (!status.equals("regist")) {
			session.setAttribute("error_title", "このページは開けません");
			session.setAttribute("error_detail", "申し訳ございませんがトップページまでお戻りください");
			return "redirect:/error";
		}
		model.addAttribute("user", new User());
		model.addAttribute("smokings", userService.selectSmokingAll());
		return "regist/smoking";
	}
	
	@PostMapping("smoking")
	public String smokingPost(@ModelAttribute("user") User user) {
		int smokingId = user.getUserRD().getSmoking();
		session.setAttribute("regist_smoking", smokingId);
		return "redirect:/regist/housemate";
	}
	
	@GetMapping("housemate")
	public String housemateGet(Model model) throws Exception {
		String status = (String) session.getAttribute("status");
		if (!status.equals("regist")) {
			session.setAttribute("error_title", "このページは開けません");
			session.setAttribute("error_detail", "申し訳ございませんがトップページまでお戻りください");
			return "redirect:/error";
		}
		model.addAttribute("user", new User());
		model.addAttribute("housemate", userService.selectHousemateAll());
		return "regist/housemate";
	}
	
	@PostMapping("housemate")
	public String housematePost(@ModelAttribute("user") User user) {
		int housemateId = user.getUserRD().getHousemate();
		session.setAttribute("regist_housemate", housemateId);
		return "redirect:/regist/done";
	}
	
	@GetMapping("/done")
	public String registDone() throws Exception {
		String status = (String) session.getAttribute("status");
		if (!status.equals("regist")) {
			session.setAttribute("error_title", "このページは開けません");
			session.setAttribute("error_detail", "申し訳ございませんがトップページまでお戻りください");
			return "redirect:/error";
		}
		
		User user = new User();
		UserBasicDetail userBD = new UserBasicDetail();
		UserRequiredDetail userRD = new UserRequiredDetail();
		
		user.setLoginId((String) session.getAttribute("regist_email"));
		user.setLoginPass("$2a$10$6h/QFk2vSOdvUmBTF08lqe90.HPGdbFgXEYz.NRN1Ns0W7suRviqq");
		/* user.setLoginPass(passwordEncoder.encode("partners")); */
		
		userBD.setSex((Integer) session.getAttribute("regist_sex"));
		userBD.setAge((Integer) session.getAttribute("regist_age"));
		userBD.setName((String) session.getAttribute("regist_name"));
		
		userRD.setHeight((int) session.getAttribute("regist_height"));
		userRD.setResidence((int) session.getAttribute("regist_residence"));
		userRD.setOccupation((int) session.getAttribute("regist_occupation"));
		userRD.setAnnualIncome((int) session.getAttribute("regist_annual_income"));
		userRD.setMaritalStatus((int) session.getAttribute("regist_marital_status"));
		userRD.setDesireToMarry((int) session.getAttribute("regist_desire_to_marry"));
		userRD.setHoliday((int) session.getAttribute("regist_holiday"));
		userRD.setSmoking((int) session.getAttribute("regist_smoking"));
		userRD.setHousemate((int) session.getAttribute("regist_housemate"));
		
		userService.insertUserAllDetail(user, userBD, userRD, null);
		
		String email = (String) session.getAttribute("regist_email");
		String userId = userService.getUserIdByEmail(email).toString();
		
		userService.createTable(userId);
		userService.insertUserRole(userId);
		
		session.invalidate();
		session.setAttribute("status", "login");
		session.setAttribute("login_id", email);
		
		session.setMaxInactiveInterval(1800);
		
		return "regist/done";
	}
	
}
