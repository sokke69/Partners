package com.example.app.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.app.domain.Alcohol;
import com.example.app.domain.BirthPlace;
import com.example.app.domain.BloodType;
import com.example.app.domain.DesireToGetchild;
import com.example.app.domain.Educational;
import com.example.app.domain.Figure;
import com.example.app.domain.HaveChildren;
import com.example.app.domain.Housework;
import com.example.app.domain.Payment;
import com.example.app.domain.Sibling;
import com.example.app.domain.Sociability;
import com.example.app.domain.TimeToMeet;
import com.example.app.domain.Vaccination;

@Mapper
public interface UserFreeDetailMapper {
	
	void insertUserFD() throws Exception;
	List<Figure> selectFigureAll() throws Exception;
	List<BloodType> selectBloodTypeAll() throws Exception;
	List<BirthPlace> selectBirthPlaceAll() throws Exception;
	List<Educational> selectEducationalAll() throws Exception;
	List<Sibling> selectSiblingAll() throws Exception;
	List<HaveChildren> selectHaveChildrenAll() throws Exception;
	List<DesireToGetchild> selectDesireToGetchildAll() throws Exception;
	List<Housework> selectHouseworkAll() throws Exception;
	List<TimeToMeet> selectTimeToMeetAll() throws Exception;
	List<Payment> selectPaymentAll() throws Exception;
	List<Sociability> selectSociabilityAll() throws Exception;
	List<Alcohol> selectAlcoholAll() throws Exception;
	List<Vaccination> selectVaccinationAll() throws Exception;

}
