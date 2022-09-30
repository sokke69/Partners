package com.example.app.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.example.app.domain.UserBasicDetail;

@Mapper
public interface UserBasicDetailMapper {
	
	void insertUserBD(UserBasicDetail userBD) throws Exception;

}
