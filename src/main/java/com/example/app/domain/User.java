package com.example.app.domain;

import lombok.Data;

@Data
public class User {
	
	private int id;
	private String loginId;
	private String loginPass;
	private UserBasicDetail userBD;
	private UserRequiredDetail userRD;
	private UserFreeDetail userFD;

}
