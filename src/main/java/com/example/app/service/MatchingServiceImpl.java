package com.example.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
	public List<Integer> checkNotMatchingAndReceivedNiceOfMineList(Integer myId) throws Exception {
		return matchingMapper.checkNotMatchingAndReceivedNiceOfMineList(myId);
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



}
