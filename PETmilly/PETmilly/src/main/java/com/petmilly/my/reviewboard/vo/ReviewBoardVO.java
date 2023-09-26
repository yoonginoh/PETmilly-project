package com.petmilly.my.reviewboard.vo;

public class ReviewBoardVO {
	 private Integer reviewboardNo;
     private String reviewboardTitle;
     private String reviewboardContent;
     private String memId;
     private String memNm;
     private String createDate;
     private String reviewboardAHName;
	
     


	@Override
	public String toString() {
		return "ReviewBoardVO [reviewboardNo=" + reviewboardNo + ", reviewboardTitle=" + reviewboardTitle
				+ ", reviewboardContent=" + reviewboardContent + ", memId=" + memId + ", memNm=" + memNm
				+ ", createDate=" + createDate + ", reviewboardAHName=" + reviewboardAHName + "]";
	}




	public Integer getReviewboardNo() {
		return reviewboardNo;
	}




	public void setReviewboardNo(Integer reviewboardNo) {
		this.reviewboardNo = reviewboardNo;
	}




	public String getReviewboardTitle() {
		return reviewboardTitle;
	}




	public void setReviewboardTitle(String reviewboardTitle) {
		this.reviewboardTitle = reviewboardTitle;
	}




	public String getReviewboardContent() {
		return reviewboardContent;
	}




	public void setReviewboardContent(String reviewboardContent) {
		this.reviewboardContent = reviewboardContent;
	}




	public String getMemId() {
		return memId;
	}




	public void setMemId(String memId) {
		this.memId = memId;
	}




	public String getMemNm() {
		return memNm;
	}




	public void setMemNm(String memNm) {
		this.memNm = memNm;
	}




	public String getCreateDate() {
		return createDate;
	}




	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}




	public String getReviewboardAHName() {
		return reviewboardAHName;
	}




	public void setReviewboardAHName(String reviewboardAHName) {
		this.reviewboardAHName = reviewboardAHName;
	}




	public ReviewBoardVO() {
	}
}
