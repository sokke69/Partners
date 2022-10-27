package com.example.app.service;

import java.util.List;

import com.example.app.domain.MatchingUser;
import com.example.app.domain.User;

public interface SearchService {
	
	List<User> searchUserAllDetailList(User user) throws Exception;
	List<User> searchUserAllDetailListDetail(User user) throws Exception;
	void updateVisitedTimeMyTable(Integer myId, Integer partnersId) throws Exception;
	void updateVisitedTimePartnersTable(Integer myId, Integer partnersId) throws Exception;
	List<MatchingUser> cameList(Integer myId) throws Exception;
	List<User> usersOfTop(Integer count, Integer sex) throws Exception;
	Integer checkNewMatching(Integer myId) throws Exception;
	void updateNewMatching(Integer myId, Integer partnersId, Integer status) throws Exception;
	void updateNewMatchingToZero(Integer myId) throws Exception;

}
