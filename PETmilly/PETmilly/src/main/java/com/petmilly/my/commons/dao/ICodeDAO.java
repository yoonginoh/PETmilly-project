package com.petmilly.my.commons.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.petmilly.my.commons.vo.CodeVO;

@Mapper
public interface ICodeDAO {
	public List<CodeVO> getCodeList(String commParent);
}
