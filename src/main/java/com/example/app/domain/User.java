package com.example.app.domain;

import java.util.Date;

import lombok.Data;

@Data
public class User {
	
	private int id;
	private String email;
	private Integer sex;
	private String sexStr;
	private Integer age;
	private String name;
	private int likePoint;
	private Integer memberStatus;
	private String memberStatusStr;
	private Date registed;
	private UserRequiredDetail userRD;
	private UserFreeDetail userFD;

}
