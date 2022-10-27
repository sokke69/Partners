package com.example.app.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.app.domain.MatchingUser;
import com.example.app.domain.Message;
import com.example.app.domain.User;
import com.example.app.mapper.MatchingMapper;

@Service
public class MatchingServiceImpl implements MatchingService{

	@Autowired
	MatchingMapper matchingMapper;
	
	@Override
	public void createRowOfMine(Integer myId, Integer partnersId) throws Exception {
		matchingMapper.createRowOfMine(myId, partnersId);
	}

	@Override
	public Integer checkRowOfMine(Integer myId, Integer partnersId) throws Exception {
		return matchingMapper.checkRowOfMine(myId, partnersId);
		
	}

	@Override
	public Integer checkRowOfPartners(Integer partnersId, Integer myId) throws Exception {
		return matchingMapper.checkRowOfPartners(partnersId, myId);
	}
	
	@Override
	public void addSendedNiceOfMine(Integer myId, Integer partnersId) throws Exception{
		matchingMapper.addSendedNiceOfMine(myId, partnersId);
	}

	@Override
	public void createRowOfPartners(Integer partnersId, Integer myId) throws Exception {
		matchingMapper.createRowOfPartners(partnersId, myId);
	}

	@Override
	public void addReceivedNiceOfPartners(Integer partnersId, Integer myId) throws Exception {
		matchingMapper.addReceivedNiceOfPartners(partnersId, myId);
	}

	@Override
	public Integer checkSendedNiceOfMine(Integer myId, Integer partnersId) throws Exception {
		return matchingMapper.checkSendedNiceOfMine(myId, partnersId);
	}

	@Override
	public Integer checkReceivedNiceOfMine(Integer myId, Integer partnersId) throws Exception {
		return matchingMapper.checkReceivedNiceOfMine(myId, partnersId);
	}

	@Override
	public void addMatchingOfMine(Integer myId, Integer partnersId) throws Exception {
		matchingMapper.addMatchingOfMine(myId, partnersId);
	}

	@Override
	public void addMatchingOfPartners(Integer myId, Integer partnersId) throws Exception {
		matchingMapper.addMatchingOfPartners(partnersId, myId);
	}

	@Override
	public Integer checkMatchingOfMine(Integer myId, Integer partnersId) throws Exception {
		return matchingMapper.checkMatchingOfMine(myId, partnersId);
	}

	@Override
	public Integer checkMatchingOfPartners(Integer partnersId, Integer myId) throws Exception {
		return matchingMapper.checkMatchingOfPartners(partnersId, myId);
	}

	@Override
	public List<Integer> checkNotMatchingAndReceivedNiceOfMineIngtegerList(Integer myId) throws Exception {
		return matchingMapper.checkNotMatchingAndReceivedNiceOfMineIngtegerList(myId);
	}

	@Override
	public List<User> newReceivedNiceList(Integer myId) throws Exception {
		return matchingMapper.newReceivedNiceList(myId);
	}

	@Override
	public Integer checkNotMatchingAndReceivedNiceOfMine(Integer myId, Integer partnersId,Integer checkCheckedReceivedNice) throws Exception {
		return matchingMapper.checkNotMatchingAndReceivedNiceOfMine(myId, partnersId, checkCheckedReceivedNice);
	}

	@Override
	public void updateCheckedReceivedNiceOfMine(Integer myId, Integer partnersId) throws Exception {
		matchingMapper.updateCheckedReceivedNiceOfMine(myId, partnersId);
	}

	@Override
	public Integer checkCheckedReceivedNice(Integer myId, Integer partnersId) throws Exception {
		return matchingMapper.checkCheckedReceivedNice(myId, partnersId);
	}

	@Override
	public List<MatchingUser> checkMatchingList(Integer myId) throws Exception {
		return matchingMapper.checkMatchingList(myId);
	}

	@Override
	public void addFavorite(Integer myId, Integer partnersId) throws Exception {
		matchingMapper.addFavorite(myId, partnersId);
	}

	@Override
	public Integer checkFavorite(Integer myId, Integer partnersId) throws Exception {
		return matchingMapper.checkFavorite(myId, partnersId);
	}

	@Override
	public List<User> checkFavoriteList(Integer myId) throws Exception {
		return matchingMapper.checkFavoriteList(myId);
	}

	@Override
	public void cancelFavorite(Integer myId, Integer partnersId) throws Exception {
		matchingMapper.cancelFavorite(myId, partnersId);
	}

	@Override
	public List<User> checkNotMatchingAndReceivedNiceOfMineList(Integer myId) throws Exception {
		return matchingMapper.checkNotMatchingAndReceivedNiceOfMineList(myId);
	}

	@Override
	public List<User> checkNotMatchingAndSendedNiceOfMineList(Integer myId) throws Exception {
		return matchingMapper.checkNotMatchingAndSendedNiceOfMineList(myId);
	}

	@Override
	public List<Message> getMessage(Integer myId, Integer partnersId) throws Exception {
		return matchingMapper.getMessage(myId, partnersId);
	}

	@Override
	public void updateCheckedMessage(Integer partnersId, Integer myId) throws Exception {
		matchingMapper.updateCheckedMessage(partnersId, myId);
	}

	@Override
	public void sendMessage(Message message) throws Exception {
		matchingMapper.sendMessage(message);
	}

	@Override
	public Integer checkReadAndChecked(Integer myId) throws Exception {
		return matchingMapper.checkReadAndChecked(myId);
	}

	@Override
	public void updateNewMessage(Integer myId, Integer updateNum) throws Exception {
		matchingMapper.updateNewMessage(myId, updateNum);
	}

	@Override
	public void updateReadInfo(Integer myId) throws Exception {
		matchingMapper.updateReadInfo(myId);
	}

	@Override
	public String getLetestMessage(Integer myId, Integer partnersId) throws Exception {
		return matchingMapper.getLetestMessage(myId, partnersId);
	}

	@Override
	public Integer checkCheckedMessage(Integer myId, Integer partnersId) throws Exception {
		return matchingMapper.checkCheckedMessage(myId, partnersId);
	}

	@Override
	public List<Integer> getNotReadUser(Integer myId) throws Exception {
		return matchingMapper.getNotReadUser(myId);
	}

	@Override
	public Integer getCountNotReadByUser(Integer myId, Integer partnersId) throws Exception {
		return matchingMapper.getCountNotReadByUser(myId, partnersId);
	}

	@Override
	public void updateNotReadMessage(Integer myId, Integer partnersId, Integer countNotRead) throws Exception {
		matchingMapper.updateNotReadMessage(myId, partnersId, countNotRead);
	}

	@Override
	public String getLatestMessageByUser(Integer myId, Integer partnersId) throws Exception {
		return matchingMapper.getLatestMessageByUser(myId, partnersId);
	}

	@Override
	public Date getLatestMessageTimeByUser(Integer myId, Integer partnersId) throws Exception {
		return matchingMapper.getLatestMessageTimeByUser(myId, partnersId);
	}

	@Override
	public List<Integer> getMatchingWith(Integer myId) throws Exception {
		return matchingMapper.getMatchingWith(myId);
	}

	@Override
	public String getUserName(Integer partnersId) throws Exception {
		return matchingMapper.getUserName(partnersId);
	}

	@Override
	public Integer getImg(Integer partnersId) throws Exception {
		return matchingMapper.getImg(partnersId);
	}

	@Override
	public Integer getNotReadMessage(Integer myId, Integer partnersId) throws Exception {
		return matchingMapper.getNotReadMessage(myId, partnersId);
	}

	@Override
	public void updateZeroNotReadMessage(Integer myId, Integer partnersId) throws Exception {
		matchingMapper.updateZeroNotReadMessage(myId, partnersId);
	}

	@Override
	public void updateMatchingsTablesTime(Integer myId, Integer partnersId) throws Exception {
		matchingMapper.updateMatchingsTablesTime(myId, partnersId);
	}

	@Override
	public Date getReceivedMessageNotSent(Integer myId, Integer partnersId) throws Exception {
		return matchingMapper.getReceivedMessageNotSent(myId, partnersId);
	}

	@Override
	public void updateCheckedReceivedNiceAll(Integer myId) throws Exception {
		matchingMapper.updateCheckedReceivedNiceAll(myId);
	}


}
