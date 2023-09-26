package com.petmilly.my.free.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.petmilly.my.free.dao.IFreeBoardDAO;
import com.petmilly.my.free.vo.FreeBoardSearchVO;
import com.petmilly.my.free.vo.FreeBoardVO;

@Service
public class FreeBoardService {
	
	@Autowired
	IFreeBoardDAO dao;
	
	public List<FreeBoardVO> getBoardList(FreeBoardSearchVO searchVO){
		int totalRowCount = dao.getTotalRowCount(searchVO);
		searchVO.setTotalRowCount(totalRowCount);
		searchVO.pageSetting();
		return dao.getBoardList(searchVO);
	}
}
