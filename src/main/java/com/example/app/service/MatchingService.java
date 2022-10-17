package com.example.app.service;

public interface MatchingService {
	
	Integer checkRowOfMe(Integer myId, Integer partnersId) throws Exception;
	Integer checkRowOfPartners(Integer partnersId, Integer myId) throws Exception;
	void createRowOfMe(Integer myId, Integer partnersId) throws Exception;
	void createRowOfPartners(Integer partnersId, Integer myId) throws Exception;
	void addSendedNiceOfMe(Integer myId, Integer partnersId) throws Exception;
	void addReceivedNiceOfPartners(Integer partnersId, Integer myId) throws Exception;
	Integer checkSendedNiceOfMe(Integer myId, Integer partnersId) throws Exception;
	Integer checkReceivedNiceOfMe(Integer myId, Integer partnersId) throws Exception;
	void addMatchingOfMe(Integer myId, Integer partnersId) throws Exception;
	void addMatchingOfPartners(Integer myId, Integer partnersId) throws Exception;
	Integer checkMatchingOfMe(Integer myId, Integer partnersId) throws Exception;
	Integer checkMatchingOfPartners(Integer partnersId, Integer myId) throws Exception;
}
