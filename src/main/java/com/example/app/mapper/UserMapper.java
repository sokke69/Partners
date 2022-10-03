package com.example.app.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.app.domain.User;

@Mapper
public interface UserMapper {
	
	List<User> selectUserAllDetailList() throws Exception;
	List<String> selectEmail() throws Exception;
	User getUserByLoginId(String loginId) throws Exception;
	User checkLoginByEmail(String email) throws Exception;
	Integer getUserIdByEmail(String email) throws Exception;
	void insertUser(User user) throws Exception;
	void insertUserRole(String userId) throws Exception;

}
