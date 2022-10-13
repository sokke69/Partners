package com.example.app.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.example.app.domain.User;

@Mapper
public interface UserMapper {
	
	List<User> selectUserAllDetailList() throws Exception;
	List<String> selectEmail() throws Exception;
	void insertUser(User user) throws Exception;
	void insertImage() throws Exception;
	void updateImage(@Param("id") Integer id, @Param("img") Integer img) throws Exception;
	void editUser(User user) throws Exception;
	User getUserByLoginId(String loginId) throws Exception;
	User getUserDetailOfNumberByLoginId(String loginId) throws Exception;
	User checkLoginByEmail(String email) throws Exception;
	Integer getUserIdByEmail(String email) throws Exception;
	

}
