package com.example.app.domain;

import lombok.Data;

@Data
public class UserRequiredDetail {
	
	private int id;
	private Integer height;
	private Integer heightMin;
	private Integer heightMax;
	private Integer residence;
	private String residenceStr;
	private Integer occupation;
	private String occupationStr;
	private Integer annualIncome;
	private Integer annualIncomePrice;
	private Integer annualIncomeMin;
	private Integer annualIncomeMax;
	private String annualIncomeStr;
	private Integer maritalStatus;
	private String maritalStatusStr;
	private Integer desireToMarry;
	private String desireToMarryStr;
	private Integer holiday;
	private String holidayStr;
	private Integer smoking;
	private String smokingStr;
	private Integer housemate;
	private String housemateStr;

}
