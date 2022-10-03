package com.example.app.domain;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.validation.Validator;

import com.example.app.config.ValidationConfig;

@SpringBootTest
@ContextConfiguration(classes = {ValidationConfig.class})
class UserTest {
	
	User user = new User();
	
	@Autowired
	Validator validator;

	@Test
	void all_正常系() throws Exception{
		// Given

		
		// When
		
		
		// Then
		
		
		
		
	}

}
