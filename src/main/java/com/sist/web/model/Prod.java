package com.sist.web.model;

import java.io.Serializable;

public class Prod implements Serializable 
{
	private static final long serialVersionUID = 1L;
	
	private String prodId;					//제품 아이디
    private String prodSubCateCombinedId;	//제품 하위 카테고리 결합 아이디
    private String prodName;				//제품 아이디
    private int prodPrice;					//제품 가격
    private int prodDiscountPercent;		//제품 할인율
    private String prodInfo;				//제품 상세설명
    private String prodStatus;				//제품 상태
    private String regDate;					//제품 등록일
    
    private String searchValue;
    
    private long startRow;
    private long endRow;
    
    public Prod() 
    {
    	prodId = "";
    	prodSubCateCombinedId = "";
    	prodName = "";
    	prodPrice = 0;
    	prodDiscountPercent = 0;
    	prodInfo = "";
    	prodStatus = "";
    	regDate = "";
    	
    	searchValue = "";
    	
    	startRow = 0;
    	endRow = 0;
    }
    
	public String getSearchValue() {
		return searchValue;
	}

	public void setSearchValue(String searchValue) {
		this.searchValue = searchValue;
	}

	public long getStartRow() {
		return startRow;
	}

	public void setStartRow(long startRow) {
		this.startRow = startRow;
	}

	public long getEndRow() {
		return endRow;
	}

	public void setEndRow(long endRow) {
		this.endRow = endRow;
	}
	
	public String getProdId() {
		return prodId;
	}

	public void setProdId(String prodId) {
		this.prodId = prodId;
	}

	public String getProdSubCateCombinedId() {
		return prodSubCateCombinedId;
	}

	public void setProdSubCateCombinedId(String prodSubCateCombinedId) {
		this.prodSubCateCombinedId = prodSubCateCombinedId;
	}

	public String getProdName() {
		return prodName;
	}

	public void setProdName(String prodName) {
		this.prodName = prodName;
	}

	public int getProdPrice() {
		return prodPrice;
	}

	public void setProdPrice(int prodPrice) {
		this.prodPrice = prodPrice;
	}

	public int getProdDiscountPercent() {
		return prodDiscountPercent;
	}

	public void setProdDiscountPercent(int prodDiscountPercent) {
		this.prodDiscountPercent = prodDiscountPercent;
	}

	public String getProdInfo() {
		return prodInfo;
	}

	public void setProdInfo(String prodInfo) {
		this.prodInfo = prodInfo;
	}

	public String getProdStatus() {
		return prodStatus;
	}

	public void setProdStatus(String prodStatus) {
		this.prodStatus = prodStatus;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
}
