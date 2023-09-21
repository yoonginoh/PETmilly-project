package com.petmilly.my.reviewboard.dao;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import com.petmilly.my.reviewboard.vo.ReviewBoardVO;

@Mapper
public interface IReviewboardDAO { // 인터페이스로 변경

    List<ReviewBoardVO> getBoardList(); // 메서드 선언

}
