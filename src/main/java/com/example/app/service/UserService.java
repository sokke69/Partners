package com.example.app.service;

import java.util.List;

import com.example.app.domain.Alcohol;
import com.example.app.domain.AnnualIncome;
import com.example.app.domain.BirthPlace;
import com.example.app.domain.BloodType;
import com.example.app.domain.DesireToGetchild;
import com.example.app.domain.DesireToMarry;
import com.example.app.domain.Educational;
import com.example.app.domain.Figure;
import com.example.app.domain.HaveChildren;
import com.example.app.domain.Holiday;
import com.example.app.domain.Housemate;
import com.example.app.domain.Housework;
import com.example.app.domain.MaritalStatus;
import com.example.app.domain.Occupation;
import com.example.app.domain.Payment;
import com.example.app.domain.Residence;
import com.example.app.domain.Sibling;
import com.example.app.domain.Smoking;
import com.example.app.domain.Sociability;
import com.example.app.domain.TimeToMeet;
import com.example.app.domain.User;
import com.example.app.domain.UserBasicDetail;
import com.example.app.domain.UserRequiredDetail;
import com.example.app.domain.Vaccination;

public interface UserService/* extends UserDetailsService */{
	
	// AllRegist
	void insertUserAllDetail(User user, UserBasicDetail userBD, UserRequiredDetail userRD) throws Exception;
	
	
	// UserMapper.java
	void insertUser(User user) throws Exception;
	void insertImage() throws Exception;
	void updateImage(Integer id, Integer img) throws Exception;
	void editUser(User user) throws Exception;
	void deleteUser(int i) throws Exception;
	List<User> getUserAllDetailList() throws Exception;
	List<String> selectEmail() throws Exception;
	User getUserByLoginId(String loginId) throws Exception;
	User getUserDetailOfNumberByLoginId(String loginId) throws Exception;
	Integer getUserIdByEmail(String email) throws Exception;
	
	
	//UserBasicDetailMapper.java
	void insertUserBD(UserBasicDetail userBD) throws Exception;
	void editUserBD(User user) throws Exception;
	UserBasicDetail getInfoLikePoint(Integer id) throws Exception;
	void addLikePointDay(Integer id, Integer addedLikePoint) throws Exception;
	void addLikePointMonth(Integer id, Integer addedLikePoint) throws Exception;
	void updateLasttimeGotLikePointDay (Integer id) throws Exception;
	void updateLasttimeGotLikePointMonth (Integer id) throws Exception;
	
	
	// UserRequiredDetailMapper.java
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
	
	
	// UserFreeDetailMapper.java
	void insertUserFD() throws Exception;
	void editUserFD(User user) throws Exception;
	List<Figure> selectFigureAll() throws Exception;
	List<BloodType> selectBloodTypeAll() throws Exception;
	List<BirthPlace> selectBirthPlaceAll() throws Exception;
	List<Educational> selectEducationalAll() throws Exception;
	List<Sibling> selectSiblingAll() throws Exception;
	List<HaveChildren> selectHaveChildrenAll() throws Exception;
	List<DesireToGetchild> selectDesireToGetchildAll() throws Exception;
	List<Housework> selectHouseworkAll() throws Exception;
	List<TimeToMeet> selectTimeToMeetAll() throws Exception;
	List<Payment> selectPaymentAll() throws Exception;
	List<Sociability> selectSociabilityAll() throws Exception;
	List<Alcohol> selectAlcoholAll() throws Exception;
	List<Vaccination> selectVaccinationAll() throws Exception;
	
	
	//UserTextMapper.java
	void insertUserT() throws Exception; 
	void editUserT(User user) throws Exception;
	
	
	
	// RegistMapper.java
	void createTable(String id) throws Exception;

	
	
	
}
