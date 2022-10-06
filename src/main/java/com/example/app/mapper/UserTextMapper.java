package com.example.app.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.example.app.domain.User;

@Mapper
public interface UserTextMapper {
	
	void insertUserT() throws Exception;
	void editUserT(User user) throws Exception;
	
}
