package com.sist.web.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.sist.web.model.Prod;

@Repository("prodDao")
public interface ProdDao 
{
	public List<Prod> prodList(Prod prod);
	
	public long prodListCount(Prod prod); 
}
