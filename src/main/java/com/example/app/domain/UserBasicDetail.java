package com.example.app.domain;

import java.util.Date;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import lombok.Data;

@Data
public class UserBasicDetail {
	
	private int id;
	@NotNull
	private Integer sex;
	private String sexStr;
	@NotNull
	private Integer age;
	@NotBlank
	@Size(max=16)
	private String name;
	private int likePoint;
	private Date registed;

}
