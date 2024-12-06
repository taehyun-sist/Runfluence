package com.sist.web.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sist.common.util.StringUtil;
import com.sist.web.model.Paging;
import com.sist.web.model.Prod;
import com.sist.web.service.ProdService;
import com.sist.web.util.HttpUtil;

@Controller("ProdController")
public class ProdController 
{
	public static Logger logger = LoggerFactory.getLogger(ProdController.class);
	
	@Autowired
	private ProdService prodService;
	
	@Value("#{env['auth.cookie.name']}")
	private String AUTH_COOKIE_NAME;
	
	private static final int LIST_COUNT = 5;
	private static final int PAGE_COUNT = 5;
	
	@RequestMapping(value = "/shop/shopIndex", method=RequestMethod.GET)
	public String shopIndex(HttpServletRequest request, HttpServletResponse response)
	{
		return "/shop/shopIndex";
	}
	
	@RequestMapping(value = "/shop/shopList")
	public String shopList(HttpServletRequest request, HttpServletResponse response, ModelMap model)
	{
		long curPage = HttpUtil.get(request, "curPage", (long)1);
		String searchValue = HttpUtil.get(request, "searchValue", "");	//상품명, 브랜드
		String gender = HttpUtil.get(request, "gender", "all");
		String price = HttpUtil.get(request, "price", "all");
		String brand = HttpUtil.get(request, "brand", "all");
		
		logger.debug("test : ", gender);
		
		long totalCount = 0;
		 
		List<Prod> list = null;
		Prod prod = new Prod();
		Paging paging = null;
		
		if(!StringUtil.isEmpty(searchValue))
		{
			prod.setSearchValue(searchValue);
		}
		
		totalCount = prodService.prodListCount(prod);
		
		if(totalCount > 0)
		{
			paging = new Paging("/shop/shopList", totalCount, LIST_COUNT, PAGE_COUNT, curPage, "curPage");
			prod.setStartRow(paging.getStartRow());
			prod.setEndRow(paging.getEndRow());
			
			list = prodService.prodList(prod);
		}
		
		model.addAttribute("list", list);
		model.addAttribute("searchValue", searchValue);
		model.addAttribute("curPage", curPage);
		model.addAttribute("paging", paging);
		model.addAttribute("gender", gender);
		model.addAttribute("price", price);
		model.addAttribute("brand", brand);
		
		return "/shop/shopList";
	}
	
	@RequestMapping(value = "/shop/detail")
	public String detail(HttpServletRequest request, HttpServletResponse response)
	{	
		return "/shop/detail";
	}
	
	@RequestMapping(value = "/shop/cart", method=RequestMethod.GET)
	public String cart(HttpServletRequest request, HttpServletResponse response)
	{
		return "/shop/cart";
	}
	
	@RequestMapping(value = "/shop/order", method=RequestMethod.GET)
	public String order(HttpServletRequest request, HttpServletResponse response)
	{
		return "/shop/order";
	}
	
	@RequestMapping(value = "/shop/contact", method=RequestMethod.GET)
	public String contact(HttpServletRequest request, HttpServletResponse response)
	{
		return "/shop/contact";
	}
}
