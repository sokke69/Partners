package com.example.app.service;

import java.util.List;

import com.example.app.domain.User;

public interface MatchingService {
	
	Integer checkRowOfMine(Integer myId, Integer partnersId) throws Exception;
	Integer checkRowOfPartners(Integer partnersId, Integer myId) throws Exception;
	void createRowOfMine(Integer myId, Integer partnersId) throws Exception;
	void createRowOfPartners(Integer partnersId, Integer myId) throws Exception;
	void addSendedNiceOfMine(Integer myId, Integer partnersId) throws Exception;
	void addReceivedNiceOfPartners(Integer partnersId, Integer myId) throws Exception;
	Integer checkSendedNiceOfMine(Integer myId, Integer partnersId) throws Exception;
	Integer checkReceivedNiceOfMine(Integer myId, Integer partnersId) throws Exception;
	void addMatchingOfMine(Integer myId, Integer partnersId) throws Exception;
	void addMatchingOfPartners(Integer myId, Integer partnersId) throws Exception;
	Integer checkMatchingOfMine(Integer myId, Integer partnersId) throws Exception;
	Integer checkMatchingOfPartners(Integer partnersId, Integer myId) throws Exception;
	List<Integer> checkNotMatchingAndReceivedNiceOfMineList(Integer myId) throws Exception;
	Integer checkNotMatchingAndReceivedNiceOfMine(Integer myId, Integer partnersId,Integer checkCheckedReceivedNice) throws Exception;
	List<User> newReceivedNiceList(Integer myId) throws Exception;
	void updateCheckedReceivedNiceOfMine(Integer myId, Integer partnersId) throws Exception;
	Integer checkCheckedReceivedNice(Integer myId, Integer partnersId) throws Exception;
}
