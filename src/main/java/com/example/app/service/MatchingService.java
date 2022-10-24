package com.example.app.service;

import java.util.Date;
import java.util.List;

import com.example.app.domain.MatchingUser;
import com.example.app.domain.Message;
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
	List<Integer> checkNotMatchingAndReceivedNiceOfMineIngtegerList(Integer myId) throws Exception;
	List<User> checkNotMatchingAndSendedNiceOfMineList(Integer myId) throws Exception;
	List<User> checkNotMatchingAndReceivedNiceOfMineList(Integer myId) throws Exception;
	Integer checkNotMatchingAndReceivedNiceOfMine(Integer myId, Integer partnersId,Integer checkCheckedReceivedNice) throws Exception;
	List<User> newReceivedNiceList(Integer myId) throws Exception;
	void updateCheckedReceivedNiceOfMine(Integer myId, Integer partnersId) throws Exception;
	Integer checkCheckedReceivedNice(Integer myId, Integer partnersId) throws Exception;
	List<MatchingUser> checkMatchingList(Integer myId) throws Exception;
	void addFavorite(Integer myId, Integer partnersId) throws Exception;
	Integer checkFavorite(Integer myId, Integer partnersId) throws Exception;
	List<User> checkFavoriteList(Integer myId) throws Exception;
	void cancelFavorite(Integer myId, Integer partnersId) throws Exception;
	List<Message> getMessage(Integer myId, Integer partnersId) throws Exception;
	void updateCheckedMessage(Integer partnersId, Integer myId) throws Exception;
	void sendMessage(Message message) throws Exception;
	Integer checkReadAndChecked(Integer myId) throws Exception;
	void updateNewMessage(Integer myId, Integer updateNum) throws Exception;
	void updateReadInfo(Integer myId) throws Exception;
	String getLetestMessage(Integer myId, Integer partnersId) throws Exception;
	Integer checkCheckedMessage(Integer myId, Integer partnersId) throws Exception;
	List<Integer> getNotReadUser(Integer myId) throws Exception;
	Integer getCountNotReadByUser(Integer myId, Integer partnersId) throws Exception;
	void updateNotReadMessage(Integer myId, Integer partnersId, Integer countNotRead) throws Exception;
	String getLatestMessageByUser(Integer myId, Integer partnersId) throws Exception;
	Date getLatestMessageTimeByUser(Integer myId, Integer partnersId) throws Exception;
	List<Integer> getMatchingWith(Integer myId) throws Exception;
	String getUserName(Integer partnersId) throws Exception;
	Integer getImg(Integer partnersId) throws Exception;
	Integer getNotReadMessage(Integer myId, Integer partnersId) throws Exception;
	void updateZeroNotReadMessage(Integer myId, Integer partnersId) throws Exception;
	void updateMatchingsTablesTime(Integer myId, Integer partnersId) throws Exception;
	
}
