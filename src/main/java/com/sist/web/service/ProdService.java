package com.sist.web.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sist.web.dao.ProdDao;
import com.sist.web.model.Prod;

@Service("prodService")
public class ProdService 
{
	public static Logger logger = LoggerFactory.getLogger(ProdService.class);
	
	@Autowired
	private ProdDao prodDao;
	
	public List<Prod> prodList(Prod prod)
	{
		List<Prod> list = null;
		
		try
		{
			list = prodDao.prodList(prod);
		}
		
		catch (Exception e) 
		{
			logger.error("[ProdService] prodList Exception", e);
		}
		
		return list;
	}
	
	public long prodListCount(Prod prod)
	{
		long count = 0;
		
		try 
		{
			count = prodDao.prodListCount(prod);
		} 
		
		catch (Exception e) 
		{
			logger.error("[ProdService] prodListCount Exception", e);
		}
		
		return count;
	}
}
