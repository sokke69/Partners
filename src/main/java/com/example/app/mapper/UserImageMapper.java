package com.example.app.mapper;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserImageMapper {
	
	Integer countPartnersImg(Integer partnersId) throws Exception;
	
}
