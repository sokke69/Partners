package com.example.app.domain;

import java.util.Date;

import lombok.Data;

@Data
public class MatchingUser {
	
	private Integer id;
	private String name;
	private Integer img;
	private String message;
	private Integer notReadMessage;
	private String latestMessageTime;
	private Integer toId;
	private Date cameTime;
	private String residence;
	private Integer age;
	private String hobbyOne;
	private String hobbyTwo;
	private String hobbyThree;
	private Integer height;
	private String occupation;
	private String housemate; 

}
