package com.petmilly.my.commons.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.petmilly.my.commons.dao.ICodeDAO;
import com.petmilly.my.commons.vo.CodeVO;

@Service
public class CodeService {
	@Autowired
	ICodeDAO codeDao;
	
	public List<CodeVO> getCodeList(String commParent){
		List<CodeVO> codeList = codeDao.getCodeList(commParent);
		return codeList;
	}
}
