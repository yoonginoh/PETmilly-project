package com.petmilly.my.searchAH.dao;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import com.petmilly.my.reviewboard.vo.ReviewBoardVO;

@Mapper
public interface SearchAHDAO { // �������̽��� ����

    List<ReviewBoardVO> getBoardList(); // �޼��� ����

}
