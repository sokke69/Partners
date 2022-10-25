package com.example.app.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.app.domain.MatchingUser;
import com.example.app.domain.User;

@Mapper
public interface SearchMapper {
	
	List<User> searchUserAllDetailList(User user) throws Exception;
	List<User> searchUserAllDetailListDetail(User user) throws Exception;
	void updateVisitedTimeMyTable(Integer myId, Integer partnersId) throws Exception;
	void updateVisitedTimePartnersTable(Integer myId, Integer partnersId) throws Exception;
	List<User> checkPartnersCame(Integer myId, Integer partnersId) throws Exception;
	List<MatchingUser> cameList(Integer myId) throws Exception;
}
