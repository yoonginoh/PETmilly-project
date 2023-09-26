package com.petmilly.my.free.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.petmilly.my.commons.service.CodeService;
import com.petmilly.my.commons.vo.CodeVO;
import com.petmilly.my.free.service.FreeBoardService;
import com.petmilly.my.free.vo.FreeBoardSearchVO;
import com.petmilly.my.free.vo.FreeBoardVO;

@Controller
@RequestMapping("/free")
public class FreeBoardController {

	@Autowired
	FreeBoardService freeBoardService;
	
	@Autowired
	CodeService codeService;
	
	@ModelAttribute("comList") // comList 濡� board履쎌뿉�꽌�뒗 紐⑤몢 �궗�슜媛��뒫
	public List<CodeVO> getCodeList(){
		List<CodeVO> comList = codeService.getCodeList("BC00");
		return comList;
	}
	
	@RequestMapping("/freeList")
	public String freeBoardList(Model model
			, @ModelAttribute("searchVO") FreeBoardSearchVO searchVO) {
		List<FreeBoardVO> freeBoardList = 
				freeBoardService.getBoardList(searchVO);
		model.addAttribute("freeList", freeBoardList);
		
		return "free/freeList";
	}
}
