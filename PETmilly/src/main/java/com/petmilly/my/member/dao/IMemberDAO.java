package com.petmilly.my.member.dao;

import org.apache.ibatis.annotations.Mapper;

import com.petmilly.my.member.vo.MemberVO;

@Mapper
public interface IMemberDAO {
	public int registMember(MemberVO member);
	public MemberVO loginMember(MemberVO member);
	public int profileUpload(MemberVO member);
}
