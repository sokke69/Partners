package com.example.app.domain;

import java.util.Date;
import java.util.List;

import javax.validation.Valid;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;

import lombok.Data;

@Data
public class User/* implements UserDetails */{
	
	private int id;
	@NotBlank
	@Email(message="※ メールアドレスが正しく入力されていません")
	private String loginId;
	private String loginPass;
	private List<String> roles;
	@Valid
	private UserBasicDetail userBD;
	@Valid
	private UserRequiredDetail userRD;
	@Valid
	private UserFreeDetail userFD;
	@Valid
	private UserText userT;
	private UserImage userI;
	private Integer niceStatus;
	private Integer favoriteStatus;
	private String latestMessage;
	private Date latestMessageTime;
	private Integer countNotReadMessage;
}
