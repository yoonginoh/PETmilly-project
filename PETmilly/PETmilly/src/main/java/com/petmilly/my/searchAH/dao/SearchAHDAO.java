package com.petmilly.my.searchAH.dao;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;

import com.petmilly.my.searchAH.vo.SearchAHVO;

@Mapper
public interface SearchAHDAO { // �������̽��� ����

    List<SearchAHVO> getSearchList(); // �޼��� ����
    

}
