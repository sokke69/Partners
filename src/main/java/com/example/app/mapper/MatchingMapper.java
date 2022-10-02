package com.example.app.mapper;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MatchingMapper {
	
	void createTable(String id) throws Exception;
	void insertUserRole(String userId) throws Exception;

}
