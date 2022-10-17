package com.example.app.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.example.app.domain.User;
import com.example.app.domain.UserBasicDetail;

@Mapper
public interface UserBasicDetailMapper {
	
	void insertUserBD(UserBasicDetail userBD) throws Exception;
	void editUserBD(User user) throws Exception;
	UserBasicDetail getInfoLikePoint(Integer id) throws Exception;
	void addLikePointDay(@Param("id")Integer id, @Param("addedLikePoint") Integer addedLikePoint) throws Exception;
	void addLikePointMonth(@Param("id")Integer id, @Param("addedLikePoint")Integer addedLikePoint) throws Exception;
	void updateLasttimeGotLikePointDay (Integer id) throws Exception;
	void updateLasttimeGotLikePointMonth (Integer id) throws Exception;
	Integer checkLikePoint(Integer id) throws Exception;
	Integer useLikePoint(Integer id, Integer useLikePoint) throws Exception;

}
