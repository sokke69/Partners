package com.example.app.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.example.app.domain.User;

@Mapper
public interface MatchingMapper {
	
	Integer checkRowOfMine(@Param("myId") Integer myId,@Param("partnersId") Integer partnersId) throws Exception;
	Integer checkRowOfPartners(@Param("partnersId") Integer partnersId,@Param("myId") Integer myId) throws Exception;
	void createRowOfMine(@Param("myId") Integer myId,@Param("partnersId") Integer partnersId) throws Exception;
	void createRowOfPartners(@Param("partnersId") Integer partnersId, @Param("myId") Integer myId) throws Exception;
	void addSendedNiceOfMine(@Param("myId") Integer myId,@Param("partnersId") Integer partnersId) throws Exception;
	void addReceivedNiceOfPartners(@Param("partnersId") Integer partnersId, @Param("myId") Integer myId) throws Exception;
	Integer checkSendedNiceOfMine(@Param("myId") Integer myId,@Param("partnersId") Integer partnersId) throws Exception;
	Integer checkReceivedNiceOfMine(@Param("myId") Integer myId,@Param("partnersId") Integer partnersId) throws Exception;
	void addMatchingOfMine(@Param("myId") Integer myId,@Param("partnersId") Integer partnersId) throws Exception;
	void addMatchingOfPartners(@Param("partnersId") Integer partnersId, @Param("myId") Integer myId) throws Exception;
	Integer checkMatchingOfMine(@Param("myId") Integer myId,@Param("partnersId") Integer partnersId) throws Exception;
	Integer checkMatchingOfPartners(@Param("partnersId") Integer partnersId,@Param("myId") Integer myId) throws Exception;
	List<Integer> checkNotMatchingAndReceivedNiceOfMineList(@Param("myId") Integer myId) throws Exception;
	Integer checkNotMatchingAndReceivedNiceOfMine(Integer myId, Integer partnersId,Integer checkCheckedReceivedNice) throws Exception;
	List<User> newReceivedNiceList(Integer myId) throws Exception;
	void updateCheckedReceivedNiceOfMine(Integer myId, Integer partnersId) throws Exception;
	Integer checkCheckedReceivedNice(Integer myId, Integer partnersId) throws Exception;
	
}
