package com.example.app.domain;

import java.util.Date;

import lombok.Data;

@Data
public class Message {

	private Integer id;
	private Integer fromId;
	private Integer toId;
	private String message;
	private Integer checkedMessage;
	private Integer readInfo;
	private Date sentTime;
	private Integer countNewMessage;
	
}
