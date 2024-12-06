package com.sist.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class UserController {
	public static Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@Value("#{env['auth.cookie.name']}")
	private String AUTH_COOKIE_NAME;
	
	@RequestMapping(value = "/user/login", method=RequestMethod.GET)
	public String login(HttpServletRequest request, HttpServletResponse response)
	{
		return "/user/login";
	}
	
	@RequestMapping(value = "/user/regForm", method=RequestMethod.GET)
	public String regForm(HttpServletRequest request, HttpServletResponse response)
	{
		return "/user/regForm";
	}
	
	@RequestMapping(value = "/user/myPage", method=RequestMethod.GET)
	public String myPage(HttpServletRequest request, HttpServletResponse response)
	{
		return "/user/myPage";
	}
	
	@RequestMapping(value = "/user/idFind", method=RequestMethod.GET)
	public String idFind(HttpServletRequest request, HttpServletResponse response)
	{
		return "/user/idFind";
	}
	
	@RequestMapping(value = "/user/pwdFind", method=RequestMethod.GET)
	public String pwdFind(HttpServletRequest request, HttpServletResponse response)
	{
		return "/user/pwdFind";
	}
	
	@RequestMapping(value = "/user/buy", method=RequestMethod.GET)
	public String buy(HttpServletRequest request, HttpServletResponse response,@RequestParam(value = "tab",required = false, defaultValue = "all") String tab, Model model )
	{
		model.addAttribute("currentTab", tab);
		
		return "/user/buy";
	}
	
	@RequestMapping(value = "/user/wish", method=RequestMethod.GET)
	public String wish(HttpServletRequest request, HttpServletResponse response)
	{
		return "/user/wish";
	}
	
	@RequestMapping(value = "/user/notice", method=RequestMethod.GET)
	public String notice(HttpServletRequest request, HttpServletResponse response)
	{
		return "/user/notice";
	}
	
	@RequestMapping(value = "/user/answer", method=RequestMethod.GET)
	public String answer(HttpServletRequest request, HttpServletResponse response)
	{
		return "/user/answer";
	}
	
	@RequestMapping(value = "/user/qna", method=RequestMethod.GET)
	public String qna(HttpServletRequest request, HttpServletResponse response)
	{
		return "/user/qna";
	}
}