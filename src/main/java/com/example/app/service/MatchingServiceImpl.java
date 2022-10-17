package com.example.app.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.app.mapper.MatchingMapper;

@Service
public class MatchingServiceImpl implements MatchingService{

	@Autowired
	MatchingMapper matchingMapper;
	
	@Override
	public void createRowOfMe(Integer myId, Integer partnersId) throws Exception {
		matchingMapper.createRowOfMe(myId, partnersId);
	}

	@Override
	public Integer checkRowOfMe(Integer myId, Integer partnersId) throws Exception {
		return matchingMapper.checkRowOfMe(myId, partnersId);
		
	}

	@Override
	public Integer checkRowOfPartners(Integer partnersId, Integer myId) throws Exception {
		return matchingMapper.checkRowOfPartners(partnersId, myId);
	}
	
	@Override
	public void addSendedNiceOfMe(Integer myId, Integer partnersId) throws Exception{
		matchingMapper.addSendedNiceOfMe(myId, partnersId);
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
	public Integer checkSendedNiceOfMe(Integer myId, Integer partnersId) throws Exception {
		return matchingMapper.checkSendedNiceOfMe(myId, partnersId);
	}



}
