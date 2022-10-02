package com.example.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.app.domain.User;
import com.example.app.domain.UserFreeDetail;
import com.example.app.domain.UserRequiredDetail;
import com.example.app.mapper.MatchingMapper;
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
	MatchingMapper matchingMapper;
	
	
	

	@Override
	public List<User> getUserAllDetailList() throws Exception {
		return userMapper.selectUserAllDetailList();
	}

	@Override
	public User getUserByLoginId(String loginId) throws Exception {
		return userMapper.getUserByLoginId(loginId);
	}

	@Override
	public void addUser(User user, UserRequiredDetail userRD, UserFreeDetail userFD) throws Exception {
		// TODO 自動生成されたメソッド・スタブ

	}

	@Override
	public void editUser(User user, UserRequiredDetail userRD, UserFreeDetail userFD) throws Exception {
		// TODO 自動生成されたメソッド・スタブ

	}

	@Override
	public void deleteUser(int i) throws Exception {
		// TODO 自動生成されたメソッド・スタブ

	}

	@Override
	public List<String> selectEmail() throws Exception {
		return userMapper.selectEmail();
	}

	@Override
	public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
		try {
			return userMapper.checkLoginByEmail(email);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public Integer getUserIdByEmail(String email) throws Exception {
		return userMapper.getUserIdByEmail(email);
	}

	@Override
	public void insertUserRole(String userId) throws Exception {
		userMapper.insertUserRole(userId);
	}

}
