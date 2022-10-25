package com.example.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.app.domain.MatchingUser;
import com.example.app.domain.User;
import com.example.app.mapper.SearchMapper;

@Service
public class SearchServiceImpl implements SearchService{
	
	@Autowired
	SearchMapper searchMapper;

	@Override
	public List<User> searchUserAllDetailList(User user) throws Exception {
		return searchMapper.searchUserAllDetailList(user);
	}
	
	@Override
	public List<User> searchUserAllDetailListDetail(User user) throws Exception {
		return searchMapper.searchUserAllDetailListDetail(user);
	}

	@Override
	public void updateVisitedTimeMyTable(Integer myId, Integer partnersId) throws Exception {
		searchMapper.updateVisitedTimeMyTable(myId, partnersId);
	}

	@Override
	public void updateVisitedTimePartnersTable(Integer myId, Integer partnersId) throws Exception {
		searchMapper.updateVisitedTimePartnersTable(myId, partnersId);
	}

	@Override
	public List<MatchingUser> cameList(Integer myId) throws Exception {
		return searchMapper.cameList(myId);
	}
	
	



}
