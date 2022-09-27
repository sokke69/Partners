package com.example.app.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.app.domain.User;

@Mapper
public interface UserMapper {
	
	List<User> selectAll() throws Exception;
	void insertUser(User user) throws Exception;

}
