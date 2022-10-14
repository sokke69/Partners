package com.example.app.domain;

import lombok.Data;

@Data
public class UserRequiredDetail {
	
	private int id;
	private int height;
	private int heightMin;
	private int heightMax;
	private int residence;
	private String residenceStr;
	private int occupation;
	private String occupationStr;
	private int annualIncome;
	private int annualIncomeMin;
	private int annualIncomeMax;
	private String annualIncomeStr;
	private int maritalStatus;
	private String maritalStatusStr;
	private int desireToMarry;
	private String desireToMarryStr;
	private int holiday;
	private String holidayStr;
	private int smoking;
	private String smokingStr;
	private int housemate;
	private String housemateStr;

}
