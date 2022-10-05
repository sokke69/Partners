package com.example.app.service;

import java.util.List;

import com.example.app.domain.AnnualIncome;
import com.example.app.domain.DesireToMarry;
import com.example.app.domain.Holiday;
import com.example.app.domain.Housemate;
import com.example.app.domain.MaritalStatus;
import com.example.app.domain.Occupation;
import com.example.app.domain.Residence;
import com.example.app.domain.Smoking;
import com.example.app.domain.User;
import com.example.app.domain.UserBasicDetail;
import com.example.app.domain.UserFreeDetail;
import com.example.app.domain.UserRequiredDetail;

public interface UserService/* extends UserDetailsService */{
	
	// AllRegist
	void insertUserAllDetail(User user, UserBasicDetail userBD, UserRequiredDetail userRD, UserFreeDetail userFD) throws Exception;
	
	
	// UserMapper.java
	void insertUser(User user) throws Exception;
	List<User> getUserAllDetailList() throws Exception;
	List<String> selectEmail() throws Exception;
	User getUserByLoginId(String loginId) throws Exception;
	User getUserDetailOfNumberByLoginId(String loginId) throws Exception;
	Integer getUserIdByEmail(String email) throws Exception;
	void editUser(User user, UserRequiredDetail userRD, UserFreeDetail userFD) throws Exception;
	void deleteUser(int i) throws Exception;
	
	
	//UserBasicDetailMapper.java
	void insertUserBD(UserBasicDetail userBD) throws Exception;
	
	
	// UserRequiredDetailMapper.java
	void insertUserRD(UserRequiredDetail userRD) throws Exception;	
	List<Residence> selectResidenceAll() throws Exception;
	List<Occupation> selectOccupationAll() throws Exception;
	List<AnnualIncome> selectAnnualIncomeAll() throws Exception;
	List<MaritalStatus> selectMaritalStatusAll() throws Exception;
	List<DesireToMarry> selectDesireToMarryAll() throws Exception;
	List<Holiday> selectHolidayAll() throws Exception;
	List<Smoking> selectSmokingAll() throws Exception;
	List<Housemate> selectHousemateAll() throws Exception;
	
	
	// UserFreeDetailMapper.java
	void insertUserFD() throws Exception;
	
	
	// RegistMapper.java
	void createTable(String id) throws Exception;
	void insertUserRole(String userId) throws Exception;

}
