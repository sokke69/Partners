package com.example.app.domain;

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

}
