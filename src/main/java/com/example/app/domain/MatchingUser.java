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
	private Date latestMessageTime;
	private Integer toId;

}
