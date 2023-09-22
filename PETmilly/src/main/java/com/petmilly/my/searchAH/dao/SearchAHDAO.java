package com.petmilly.my.searchAH.dao;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;

import com.petmilly.my.searchAH.vo.SearchAHVO;

@Mapper
public interface SearchAHDAO { // 인터페이스로 변경

    List<SearchAHVO> getSearchList(); // 메서드 선언
    

}
