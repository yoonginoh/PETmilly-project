package com.petmilly.my.reviewboard.dao;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import com.petmilly.my.reviewboard.vo.ReviewBoardVO;

@Mapper
public interface IReviewboardDAO { // �������̽��� ����

    List<ReviewBoardVO> getBoardList(); // �޼��� ����

}
