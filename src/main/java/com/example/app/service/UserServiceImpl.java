package com.example.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
import com.example.app.mapper.MatchingMapper;
import com.example.app.mapper.RegistMapper;
import com.example.app.mapper.UserBasicDetailMapper;
import com.example.app.mapper.UserFreeDetailMapper;
import com.example.app.mapper.UserMapper;
import com.example.app.mapper.UserRequiredDetailMapper;
import com.example.app.mapper.UserTextMapper;

@Service
@Transactional
public class UserServiceImpl implements UserService {

	@Autowired
	UserMapper userMapper;
	
	@Autowired
	UserBasicDetailMapper userBDMapper;
	
	@Autowired
	UserRequiredDetailMapper userRDMapper;
	
	@Autowired
	UserFreeDetailMapper userFDMapper;
	
	@Autowired
	UserTextMapper userTMapper;
	
	@Autowired
	RegistMapper registMapper;
	
	@Autowired
	MatchingMapper matchingMapper;
	
	
	
	
	// AllRegist ここから
	
	@Override
	public void insertUserAllDetail(User user, UserBasicDetail userBD, UserRequiredDetail userRD) throws Exception {
		userMapper.insertUser(user);
		userBDMapper.insertUserBD(userBD);
		userRDMapper.insertUserRD(userRD);
		userFDMapper.insertUserFD();
		userTMapper.insertUserT();
	}
	
	// AllRegist ここまで
	
	
	
	
	
	
	
	
	
	
	
	// UserMapper.java ここから
	
	@Override
	public void insertUser(User user) throws Exception {
		userMapper.insertUser(user);
	}
	
	@Override
	public void insertImage() throws Exception {
		userMapper.insertImage();
	}
	
	@Override
	public void updateImage(Integer id, Integer img) throws Exception {
		userMapper.updateImage(id, img);
		
	}
	

	@Override
	public void editUser(User user) throws Exception {
		userMapper.editUser(user);
		
	}
		
	@Override
	public void deleteUser(int i) throws Exception {
		// TODO 自動生成されたメソッド・スタブ
		
	}
	
	@Override
	public List<User> getUserAllDetailList() throws Exception {
		return userMapper.selectUserAllDetailList();
	}

	@Override
	public List<String> selectEmail() throws Exception {
		return userMapper.selectEmail();
	}
	
	@Override
	public User getUserByLoginId(String loginId) throws Exception {
		return userMapper.getUserByLoginId(loginId);
	}
	
	@Override
	public User getUserById(Integer id) throws Exception {
		return userMapper.getUserById(id);
	}
	
	@Override
	public User getUserDetailOfNumberByLoginId(String loginId) throws Exception {
		return userMapper.getUserDetailOfNumberByLoginId(loginId);
	}

	@Override
	public Integer getUserIdByEmail(String email) throws Exception {
		return userMapper.getUserIdByEmail(email);
	}
	
	
	// UserMapper.java ここまで
	
	
	
	
	
	
	
	
	
	
	// UserBasicDetailMapper.java ここから
	
	@Override
	public void insertUserBD(UserBasicDetail userBD) throws Exception {
		userBDMapper.insertUserBD(userBD);
	}
	
	@Override
	public void editUserBD(User user) throws Exception {
		userBDMapper.editUserBD(user);
	}
	
	@Override
	public UserBasicDetail getInfoLikePoint(Integer id) throws Exception {
		return userBDMapper.getInfoLikePoint(id);
	}
	
	@Override
	public void addLikePointDay(Integer id, Integer addedLikePoint) throws Exception {
		userBDMapper.addLikePointDay(id, addedLikePoint);
	}
	
	@Override
	public void addLikePointMonth(Integer id, Integer addedLikePoint) throws Exception {
		userBDMapper.addLikePointMonth(id, addedLikePoint);
	}
	
	@Override
	public void updateLasttimeGotLikePointDay(Integer id) throws Exception {
		userBDMapper.updateLasttimeGotLikePointDay(id);
	}
	
	@Override
	public void updateLasttimeGotLikePointMonth(Integer id) throws Exception {
		userBDMapper.updateLasttimeGotLikePointMonth(id);
	}
	
	// UserBasicDetailMapper.java ここまで
	
	
	
	
	
	
	
	
	
	// UserRequiredDetailMapper.java ここから
	
	@Override
	public void insertUserRD(UserRequiredDetail userRD) throws Exception {
		userRDMapper.insertUserRD(userRD);
	}
	
	@Override
	public void editUserRD(User user) throws Exception {
		userRDMapper.editUserRD(user);
	}
	
	@Override
	public List<Residence> selectResidenceAll() throws Exception {
		return userRDMapper.selectResidenceAll();
	}

	@Override
	public List<Occupation> selectOccupationAll() throws Exception {
		return userRDMapper.selectOccupationAll();
	}

	@Override
	public List<AnnualIncome> selectAnnualIncomeAll() throws Exception {
		return userRDMapper.selectAnnualIncomeAll();
	}

	@Override
	public List<MaritalStatus> selectMaritalStatusAll() throws Exception {
		return userRDMapper.selectMaritalStatusAll();
	}

	@Override
	public List<DesireToMarry> selectDesireToMarryAll() throws Exception {
		return userRDMapper.selectDesireToMarryAll();
	}

	@Override
	public List<Holiday> selectHolidayAll() throws Exception {
		return userRDMapper.selectHolidayAll();
	}

	@Override
	public List<Smoking> selectSmokingAll() throws Exception {
		return userRDMapper.selectSmokingAll();
	}

	@Override
	public List<Housemate> selectHousemateAll() throws Exception {
		return userRDMapper.selectHousemateAll();
	}
	
	// UserRequiredDetailMapper.java ここまで
	
	
	
	
	
	
	
	
	
	// UserFreeDetailMapper.java ここから
	
	@Override
	public void insertUserFD() throws Exception {
		userFDMapper.insertUserFD();
	}
	
	@Override
	public void editUserFD(User user) throws Exception {
		userFDMapper.editUserFD(user);
	}
	
	@Override
	public List<Figure> selectFigureAll() throws Exception {
		return userFDMapper.selectFigureAll();
	}

	@Override
	public List<BloodType> selectBloodTypeAll() throws Exception {
		return userFDMapper.selectBloodTypeAll();
	}

	@Override
	public List<BirthPlace> selectBirthPlaceAll() throws Exception {
		return userFDMapper.selectBirthPlaceAll();
	}

	@Override
	public List<Educational> selectEducationalAll() throws Exception {
		return userFDMapper.selectEducationalAll();
	}

	@Override
	public List<Sibling> selectSiblingAll() throws Exception {
		return userFDMapper.selectSiblingAll();
	}

	@Override
	public List<HaveChildren> selectHaveChildrenAll() throws Exception {
		return userFDMapper.selectHaveChildrenAll();
	}

	@Override
	public List<DesireToGetchild> selectDesireToGetchildAll() throws Exception {
		return userFDMapper.selectDesireToGetchildAll();
	}

	@Override
	public List<Housework> selectHouseworkAll() throws Exception {
		return userFDMapper.selectHouseworkAll();
	}

	@Override
	public List<TimeToMeet> selectTimeToMeetAll() throws Exception {
		return userFDMapper.selectTimeToMeetAll();
	}

	@Override
	public List<Payment> selectPaymentAll() throws Exception {
		return userFDMapper.selectPaymentAll();
	}

	@Override
	public List<Sociability> selectSociabilityAll() throws Exception {
		return userFDMapper.selectSociabilityAll();
	}

	@Override
	public List<Alcohol> selectAlcoholAll() throws Exception {
		return userFDMapper.selectAlcoholAll();
	}

	@Override
	public List<Vaccination> selectVaccinationAll() throws Exception {
		return userFDMapper.selectVaccinationAll();
	}
	
	// UserFreeiredDetailMapper.java ここまで
	
	
	
	
	
	// UserTextMapper.java ここから
	
	@Override
	public void insertUserT() throws Exception{
		userTMapper.insertUserT();
	}
	
	@Override
	public void editUserT(User user) throws Exception {
		userTMapper.editUserT(user);
	}
	
	// UserTextMapper.java ここまで
	
	
	
	
	
	
	// RegistMapper ここから //
	
	@Override
	public void createTable(String id) throws Exception {
		registMapper.createTable(id);
	}
	
	
	// RegistMapper ここまで //
	
	
	
	

}