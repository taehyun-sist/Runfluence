package com.sist.web.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import io.lettuce.core.api.sync.RedisCommands;

@Controller
public class IndexController {
	public static Logger logger = LoggerFactory.getLogger(IndexController.class);
	
	@Autowired
	private RedisCommands<String, String> redisCommands;
	
	@RequestMapping(value = "/index", method=RequestMethod.GET)
	public String index(Model model, HttpServletRequest request) {
		
		redisCommands.set("test", "1");
		
		return "/index";
	}
}