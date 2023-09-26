package com.petmilly.my.free.vo;

import com.petmilly.my.commons.vo.PagingVO;

public class FreeBoardSearchVO  extends PagingVO {
	
	private String searchWord;
	private String searchType; 
	private String searchCategory;
	
	public String getSearchWord() {
		return searchWord;
	}
	public void setSearchWord(String searchWord) {
		this.searchWord = searchWord;
	}
	public String getSearchType() {
		return searchType;
	}
	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}
	public String getSearchCategory() {
		return searchCategory;
	}
	public void setSearchCategory(String searchCategory) {
		this.searchCategory = searchCategory;
	}
	
}
