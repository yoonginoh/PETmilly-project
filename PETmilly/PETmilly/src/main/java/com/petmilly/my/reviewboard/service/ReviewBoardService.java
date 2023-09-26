package com.petmilly.my.reviewboard.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.petmilly.my.commons.SearchVO;
import com.petmilly.my.reviewboard.dao.IReviewboardDAO;
import com.petmilly.my.reviewboard.vo.ReviewBoardVO;

@Service
public class ReviewBoardService {

	@Autowired
	IReviewboardDAO dao;
	
	public List<ReviewBoardVO> getBoardList(){
		
		List<ReviewBoardVO> result = dao.getBoardList();
		
		return result;
		
	}
	public List<ReviewBoardVO> searchBoardList(SearchVO search){
		List<ReviewBoardVO> result = dao.searchBoardList(search);
		return result;
	}
	public void writeBoard(ReviewBoardVO board) throws Exception {
		int result = dao.writeBoard(board);
		if(result ==0) {
			throw new Exception();
		}
	}
	public ReviewBoardVO getBoard(int boardNo) throws Exception {
		ReviewBoardVO result = dao.getBoard(boardNo);
		if(result == null) {
			throw new Exception();
		}
		return result;
	}
	
}
