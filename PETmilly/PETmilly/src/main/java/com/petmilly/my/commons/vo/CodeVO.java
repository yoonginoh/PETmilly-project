package com.petmilly.my.commons.vo;

public class CodeVO {
	
	private String commCd;      /*肄붾뱶*/
	private String commNm;	    /*肄붾뱶紐�*/
	private String commParent;	/*遺�紐� 肄붾뱶*/
	
	public CodeVO() {
	}
	
	@Override
	public String toString() {
		return "CodeVO [commCd=" + commCd + ", commNm=" + commNm + ", commParent=" + commParent + "]";
	}

	public String getCommCd() {
		return commCd;
	}
	public void setCommCd(String commCd) {
		this.commCd = commCd;
	}
	public String getCommNm() {
		return commNm;
	}
	public void setCommNm(String commNm) {
		this.commNm = commNm;
	}
	public String getCommParent() {
		return commParent;
	}
	public void setCommParent(String commParent) {
		this.commParent = commParent;
	}
	
	
}
