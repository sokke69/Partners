package com.example.app.domain;

import java.util.Date;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import lombok.Data;

@Data
public class UserBasicDetail {
	
	private int id;
	@NotNull(message="※ 選択してください")
	private Integer sex;
	private String sexStr;
	@NotNull
	@Min(18)
	@Max(120)
	private Integer age;
	private Integer ageMax;
	private Integer ageMin;
	@NotBlank
	@Size(max=16)
	private String name;
	private int likePoint;
	private Date registered;
	private Date lasttimeOfGotLikePointDay;
	private Date lasttimeOfGotLikePointMonth;
	
	
	private java.sql.Date birthday;
	private Integer year;
	private Integer month;
	private Integer day;
	
	private Integer getLikePoint;
	
}
