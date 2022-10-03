package com.example.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
import com.example.app.mapper.MatchingMapper;
import com.example.app.mapper.RegistMapper;
import com.example.app.mapper.UserBasicDetailMapper;
import com.example.app.mapper.UserFreeDetailMapper;
import com.example.app.mapper.UserMapper;
import com.example.app.mapper.UserRequiredDetailMapper;

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
	RegistMapper registMapper;
	
	@Autowired
	MatchingMapper matchingMapper;
	
	
	
	
	// AllRegist ここから
	
	@Override
	public void insertUserAllDetail(User user, UserBasicDetail userBD, UserRequiredDetail userRD, UserFreeDetail userFD) throws Exception {
		userMapper.insertUser(user);
		userBDMapper.insertUserBD(userBD);
		userRDMapper.insertUserRD(userRD);
		userFDMapper.insertUserFD();
	}
	
	// AllRegist ここまで
	
	
	
	
	
	
	
	
	
	
	
	// UserMapper.java ここから
	
	@Override
	public void insertUser(User user) throws Exception {
		userMapper.insertUser(user);
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
	public Integer getUserIdByEmail(String email) throws Exception {
		return userMapper.getUserIdByEmail(email);
	}
	
	@Override
	public void editUser(User user, UserRequiredDetail userRD, UserFreeDetail userFD) throws Exception {
		// TODO 自動生成されたメソッド・スタブ
		
	}
	
	@Override
	public void deleteUser(int i) throws Exception {
		// TODO 自動生成されたメソッド・スタブ
		
	}
	
	// UserMapper.java ここまで
	
	
	
	
	
	
	
	
	
	
	// UserBasicDetailMapper.java ここから
	
	@Override
	public void insertUserBD(UserBasicDetail userBD) throws Exception {
		userBDMapper.insertUserBD(userBD);
	}
	
	// UserBasicDetailMapper.java ここまで
	
	
	
	
	
	
	
	
	
	// UserRequiredDetailMapper.java ここから
	
	@Override
	public void insertUserRD(UserRequiredDetail userRD) throws Exception {
		userRDMapper.insertUserRD(userRD);
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
	
	// UserFreeiredDetailMapper.java ここまで
	
	
	
	
	
	
	
	
	
	// RegistMapper ここから //
	
	@Override
	public void createTable(String id) throws Exception {
		registMapper.createTable(id);
	}
	
	
	@Override
	public void insertUserRole(String userId) throws Exception {
		registMapper.insertUserRole(userId);
	}
	
	// RegistMapper ここまで //
	
	
	
	
	
	
	
	
	
	// SpringSecurity ここから
	
	@Override
	public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
		try {
			return userMapper.checkLoginByEmail(email);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	/* SpringSecurity ここまで */
	
	
	
	
}
