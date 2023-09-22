package com.petmilly.my.searchAH.vo;

public class SearchAHVO {
    private String AHName;
    private String AHAddress;
    private String AHStatus;
    private String AHPhonenm;
    private Integer longitude;
    private Integer latitude;
    
	public SearchAHVO() {
	}

	public String getAHName() {
		return AHName;
	}

	public void setAHName(String aHName) {
		AHName = aHName;
	}

	public String getAHAddress() {
		return AHAddress;
	}

	public void setAHAddress(String aHAddress) {
		AHAddress = aHAddress;
	}

	public String getAHStatus() {
		return AHStatus;
	}

	public void setAHStatus(String aHStatus) {
		AHStatus = aHStatus;
	}

	public String getAHPhonenm() {
		return AHPhonenm;
	}

	public void setAHPhonenm(String aHPhonenm) {
		AHPhonenm = aHPhonenm;
	}

	public Integer getLongitude() {
		return longitude;
	}

	public void setLongitude(Integer longitude) {
		this.longitude = longitude;
	}

	public Integer getLatitude() {
		return latitude;
	}

	public void setLatitude(Integer latitude) {
		this.latitude = latitude;
	}

	@Override
	public String toString() {
		return "SearchAHVO [AHName=" + AHName + ", AHAddress=" + AHAddress + ", AHStatus=" + AHStatus + ", AHPhonenm="
				+ AHPhonenm + ", longitude=" + longitude + ", latitude=" + latitude + "]";
	}

	
}
