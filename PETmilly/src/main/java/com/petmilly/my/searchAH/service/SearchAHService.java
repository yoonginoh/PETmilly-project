package com.petmilly.my.searchAH.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.petmilly.my.reviewboard.dao.IReviewboardDAO;
import com.petmilly.my.reviewboard.vo.ReviewBoardVO;

@Service
public class SearchAHService {

	@Autowired
	IReviewboardDAO dao;
	
	public List<ReviewBoardVO> getBoardList(){
		
		List<ReviewBoardVO> result = dao.getBoardList();
		
		return result;
		
	}
}
