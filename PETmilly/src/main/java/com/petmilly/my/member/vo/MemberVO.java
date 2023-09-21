package com.petmilly.my.member.vo;

public class MemberVO {
	
	private String memId;
	private String memPw;
	private String memNm;
	private String profile_img;
    private String addr; 

    public MemberVO() {
    }
	public MemberVO(String memId, String memPw, String memNm) {
		this.memId = memId;
		this.memPw = memPw;
		this.memNm = memNm;
	}


	public String getMemId() {
		return memId;
	}


	public void setMemId(String memId) {
		this.memId = memId;
	}


	public String getMemPw() {
		return memPw;
	}


	public void setMemPw(String memPw) {
		this.memPw = memPw;
	}


	public String getMemNm() {
		return memNm;
	}


	public void setMemNm(String memNm) {
		this.memNm = memNm;
	}


	public String getProfile_img() {
		return profile_img;
	}


	public void setProfile_img(String profile_img) {
		this.profile_img = profile_img;
	}


	public String getAddr() {
		return addr;
	}


	public void setAddr(String addr) {
		this.addr = addr;
	}


	public MemberVO(String memId, String memPw, String memNm, String profile_img, String addr) {
		super();
		this.memId = memId;
		this.memPw = memPw;
		this.memNm = memNm;
		this.profile_img = profile_img;
		this.addr = addr;
	}


	@Override
	public String toString() {
		return "MemberVO [memId=" + memId + ", memPw=" + memPw + ", memNm=" + memNm + ", profile_img=" + profile_img
				+ ", addr=" + addr + "]";
	}

	
}
