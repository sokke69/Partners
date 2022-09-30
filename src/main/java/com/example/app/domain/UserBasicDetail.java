package com.example.app.domain;

import java.util.Date;

import lombok.Data;

@Data
public class UserBasicDetail {
	
	private int id;
	private Integer sex;
	private String sexStr;
	private Integer age;
	private String name;
	private int likePoint;
	private Date registed;

}
