package com.example.app.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.app.domain.User;

@Mapper
public interface MatchingMapper {
	
	Integer checkRowOfMine(Integer myId, Integer partnersId) throws Exception;
	Integer checkRowOfPartners(Integer partnersId, Integer myId) throws Exception;
	void createRowOfMine(Integer myId, Integer partnersId) throws Exception;
	void createRowOfPartners(Integer partnersId,  Integer myId) throws Exception;
	void addSendedNiceOfMine(Integer myId, Integer partnersId) throws Exception;
	void addReceivedNiceOfPartners(Integer partnersId, Integer myId) throws Exception;
	Integer checkSendedNiceOfMine(Integer myId, Integer partnersId) throws Exception;
	Integer checkReceivedNiceOfMine(Integer myId, Integer partnersId) throws Exception;
	void addMatchingOfMine(Integer myId, Integer partnersId) throws Exception;
	void addMatchingOfPartners(Integer partnersId, Integer myId) throws Exception;
	Integer checkMatchingOfMine(Integer myId, Integer partnersId) throws Exception;
	Integer checkMatchingOfPartners(Integer partnersId, Integer myId) throws Exception;
	List<Integer> checkNotMatchingAndReceivedNiceOfMineIngtegerList(Integer myId) throws Exception;
	List<User> checkNotMatchingAndReceivedNiceOfMineList(Integer myId) throws Exception;
	Integer checkNotMatchingAndReceivedNiceOfMine(Integer myId, Integer partnersId, Integer checkCheckedReceivedNice) throws Exception;
	List<User> newReceivedNiceList(Integer myId) throws Exception;
	void updateCheckedReceivedNiceOfMine(Integer myId, Integer partnersId) throws Exception;
	Integer checkCheckedReceivedNice(Integer myId, Integer partnersId) throws Exception;
	List<User> checkMatchingList(Integer myId) throws Exception;
	void addFavorite(Integer myId, Integer partnersId) throws Exception;
	Integer checkFavorite(Integer myId, Integer partnersId) throws Exception;
	List<User> checkFavoriteList(Integer myId) throws Exception;
	void cancelFavorite(Integer myId, Integer partnersId) throws Exception;
}
