package com.example.app.domain;

import java.util.List;

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
	private UserBasicDetail userBD;
	private UserRequiredDetail userRD;
	private UserFreeDetail userFD;
	private UserText userT;
	private UserImage userI;
	
}
