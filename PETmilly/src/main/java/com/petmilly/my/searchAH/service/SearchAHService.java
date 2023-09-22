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

/// ���⼭ �Լ��� ���� ��ǥ�� ��ȯ 
// �ڿ� �Ѿ���� ��ȯ�� ���� �Ѿ �� �ֵ���