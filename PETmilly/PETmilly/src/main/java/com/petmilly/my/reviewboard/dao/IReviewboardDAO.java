package com.petmilly.my.reviewboard.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;



import com.petmilly.my.commons.SearchVO;
import com.petmilly.my.reviewboard.vo.ReviewBoardVO;

@Mapper
public interface IReviewboardDAO {
	public List<ReviewBoardVO> getBoardList();
	public List<ReviewBoardVO> searchBoardList(SearchVO search);
	public int writeBoard(ReviewBoardVO board);
	public ReviewBoardVO getBoard(int boardNo);
	public int updateBoard(ReviewBoardVO board);
	public int deleteBoard(int boardNo);
	
	public int delReply(String replyNo);
}
