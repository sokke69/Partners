package com.example.app.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.app.domain.Occupation;
import com.example.app.domain.Residence;

@Mapper
public interface UserDetailMapper {

	List<Residence> selectResidenceAll();
	List<Occupation> selectOccupationAll();
	
}
