package com.example.app.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.app.mapper.RegistMapper;

@Service
public class RegistServiceImpl implements RegistService{
	
	@Autowired
	RegistMapper registMapper;

	@Override
	public void createCheckedNewMessage() throws Exception {
		registMapper.createCheckedNewMessage();
	}

}
