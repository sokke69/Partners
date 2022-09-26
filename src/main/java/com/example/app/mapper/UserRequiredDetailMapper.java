package com.example.app.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.app.domain.AnnualIncome;
import com.example.app.domain.DesireToMarry;
import com.example.app.domain.Holiday;
import com.example.app.domain.Housemate;
import com.example.app.domain.MaritalStatus;
import com.example.app.domain.Occupation;
import com.example.app.domain.Residence;
import com.example.app.domain.Smoking;
import com.example.app.domain.UserRequiredDetail;

@Mapper
public interface UserRequiredDetailMapper {

	UserRequiredDetail insertUserRD();
	List<Residence> selectResidenceAll();
	List<Occupation> selectOccupationAll();
	List<AnnualIncome> selectAnnualIncomeAll();
	List<MaritalStatus> selectMaritalStatusAll();
	List<DesireToMarry> selectDesireToMarryAll();
	List<Holiday> selectHolidayAll();
	List<Smoking> selectSmokingAll();
	List<Housemate> selectHousemateAll();
}
