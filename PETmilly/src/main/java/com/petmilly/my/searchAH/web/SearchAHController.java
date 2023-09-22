package com.petmilly.my.searchAH.web;



import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.petmilly.my.reviewboard.vo.ReviewBoardVO;
import com.petmilly.my.searchAH.service.SearchAHService;
import com.petmilly.my.searchAH.vo.SearchAHVO;

@Controller
public class SearchAHController {
	
	@Autowired
	private SearchAHService service;
	
	@RequestMapping("/SearchAH")
	public String searchAH(Model model) {
		List<SearchAHVO> searchList = service.getSearchList();
		model.addAttribute("searchList", searchList);
		
		return "searchAH/SearchAH";		
	}
}
