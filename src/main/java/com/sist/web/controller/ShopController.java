package com.sist.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("shopController")
public class ShopController 
{
	public static Logger logger = LoggerFactory.getLogger(IndexController.class);
	
	@RequestMapping(value = "/shop/shopIndex", method=RequestMethod.GET)
	public String shopIndex(HttpServletRequest request, HttpServletResponse response)
	{
		return "/shop/shopIndex";
	}
	
	@RequestMapping(value = "/shop/shop", method=RequestMethod.GET)
	public String shop(HttpServletRequest request, HttpServletResponse response)
	{
		return "/shop/shop";
	}
	
	@RequestMapping(value = "/shop/detail", method=RequestMethod.GET)
	public String detail(HttpServletRequest request, HttpServletResponse response)
	{
		return "/shop/detail";
	}
	
}
