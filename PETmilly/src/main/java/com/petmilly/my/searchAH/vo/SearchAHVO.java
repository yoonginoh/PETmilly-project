package com.petmilly.my.searchAH.vo;

public class SearchAHVO {
	 private Integer reviewboard_no;
     private String reviewboard_title;
     private String reviewboard_content;
     private String mem_id;
     private String mem_nm;
     private String createDate;
	
     
     
	@Override
	public String toString() {
		return "ReviewBoardVO [reviewboard_no=" + reviewboard_no + ", reviewboard_title=" + reviewboard_title
				+ ", reviewboard_content=" + reviewboard_content + ", mem_id=" + mem_id + ", mem_nm=" + mem_nm
				+ ", createDate=" + createDate + "]";
	}



	public Integer getReviewboard_no() {
		return reviewboard_no;
	}



	public void setReviewboard_no(Integer reviewboard_no) {
		this.reviewboard_no = reviewboard_no;
	}



	public String getReviewboard_title() {
		return reviewboard_title;
	}



	public void setReviewboard_title(String reviewboard_title) {
		this.reviewboard_title = reviewboard_title;
	}



	public String getReviewboard_content() {
		return reviewboard_content;
	}



	public void setReviewboard_content(String reviewboard_content) {
		this.reviewboard_content = reviewboard_content;
	}



	public String getMem_id() {
		return mem_id;
	}



	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}



	public String getMem_nm() {
		return mem_nm;
	}



	public void setMem_nm(String mem_nm) {
		this.mem_nm = mem_nm;
	}



	public String getCreateDate() {
		return createDate;
	}



	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}



	public SearchAHVO() {
	}
}
