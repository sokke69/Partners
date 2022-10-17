package com.example.app.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface MatchingMapper {
	
	Integer checkRowOfMe(@Param("myId") Integer myId,@Param("partnersId") Integer partnersId) throws Exception;
	Integer checkRowOfPartners(@Param("partnersId") Integer partnersId,@Param("myId") Integer myId) throws Exception;
	void createRowOfMe(@Param("myId") Integer myId,@Param("partnersId") Integer partnersId) throws Exception;
	void createRowOfPartners(@Param("partnersId") Integer partnersId, @Param("myId") Integer myId) throws Exception;
	void addSendedNiceOfMe(@Param("myId") Integer myId,@Param("partnersId") Integer partnersId) throws Exception;
	void addReceivedNiceOfPartners(@Param("partnersId") Integer partnersId, @Param("myId") Integer myId) throws Exception;
	Integer checkSendedNiceOfMe(@Param("myId") Integer myId,@Param("partnersId") Integer partnersId) throws Exception;
	Integer checkReceivedNiceOfMe(@Param("myId") Integer myId,@Param("partnersId") Integer partnersId) throws Exception;
	void addMatchingOfMe(@Param("myId") Integer myId,@Param("partnersId") Integer partnersId) throws Exception;
	void addMatchingOfPartners(@Param("partnersId") Integer partnersId, @Param("myId") Integer myId) throws Exception;
	Integer checkMatchingOfMe(@Param("myId") Integer myId,@Param("partnersId") Integer partnersId) throws Exception;
	Integer checkMatchingOfPartners(@Param("partnersId") Integer partnersId,@Param("myId") Integer myId) throws Exception;
	
}
