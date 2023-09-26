package com.petmilly.my.free.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.petmilly.my.free.vo.FreeBoardSearchVO;
import com.petmilly.my.free.vo.FreeBoardVO;

@Mapper
public interface IFreeBoardDAO {
	
		public int getTotalRowCount(FreeBoardSearchVO searchVO);
		public List<FreeBoardVO> getBoardList(FreeBoardSearchVO serachVO);
}
