package com.example.app.mapper;

import java.util.List;

import com.example.app.domain.User;
import com.example.app.domain.UserAllDetail;
import com.example.app.domain.UserFreeDetail;
import com.example.app.domain.UserRequiredDetail;

public interface UserAllDetailMapper {
	
	List<UserAllDetail> showAll(User user, UserRequiredDetail userRD, UserFreeDetail userFD) throws Exception;

}
