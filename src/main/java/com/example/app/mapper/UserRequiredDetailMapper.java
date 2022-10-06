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
import com.example.app.domain.User;
import com.example.app.domain.UserRequiredDetail;

@Mapper
public interface UserRequiredDetailMapper {

	void insertUserRD(UserRequiredDetail userRD) throws Exception;
	void editUserRD(User user) throws Exception;
	List<Residence> selectResidenceAll() throws Exception;
	List<Occupation> selectOccupationAll() throws Exception;
	List<AnnualIncome> selectAnnualIncomeAll() throws Exception;
	List<MaritalStatus> selectMaritalStatusAll() throws Exception;
	List<DesireToMarry> selectDesireToMarryAll() throws Exception;
	List<Holiday> selectHolidayAll() throws Exception;
	List<Smoking> selectSmokingAll() throws Exception;
	List<Housemate> selectHousemateAll() throws Exception;
}
