package com.example.app.domain;

import javax.validation.constraints.NotNull;

import lombok.Data;

@Data
public class LoginRandomInt {
	
	@NotNull
	private Integer random6of1;
	@NotNull
	private Integer random6of2;
	@NotNull
	private Integer random6of3;
	@NotNull
	private Integer random6of4;
	@NotNull
	private Integer random6of5;
	@NotNull
	private Integer random6of6;

}
