package com.petmilly.my.searchAH.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.petmilly.my.reviewboard.dao.IReviewboardDAO;
import com.petmilly.my.reviewboard.vo.ReviewBoardVO;
import com.petmilly.my.searchAH.dao.SearchAHDAO;
import com.petmilly.my.searchAH.vo.SearchAHVO;

@Service
public class SearchAHService {

	@Autowired
	SearchAHDAO dao;
	
	public List<SearchAHVO> getSearchList(){
		
		List<SearchAHVO> result = dao.getSearchList();
		
		return result;
		
	}
}

/// 여기서 함수로 만들어서 좌표계 변환 
// 뒤에 넘어갈떄는 변환된 값이 넘어갈 수 있도록