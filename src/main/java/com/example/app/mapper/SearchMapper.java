package com.example.app.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.app.domain.User;

@Mapper
public interface SearchMapper {
	
	List<User> searchUserAllDetailList(Integer sex) throws Exception;

}