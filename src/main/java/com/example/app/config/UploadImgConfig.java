package com.example.app.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class UploadImgConfig implements WebMvcConfigurer {

	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		// 学校
		//registry.addResourceHandler("/imgs/**")
		//	.addResourceLocations("file:///C:/Users/zd2L17/pleiades2/workspace/Partners/imgs/");
		
		// 家
		//registry.addResourceHandler("/imgs/**")
		//	.addResourceLocations("file:///D:/pleiades/workspace2/Partners/imgs/");
		
		// Linux
		registry.addResourceHandler("/imgs/**")
			.addResourceLocations("file:/home/trainee/imgs/");
		
	}

}
