package com.petmilly.my.reviewboard.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import com.petmilly.my.member.vo.MemberVO;
import com.petmilly.my.reviewboard.service.ReviewBoardService;
import com.petmilly.my.reviewboard.vo.ReviewBoardVO;

@Controller
public class ReviewboardController {
	
	@Autowired
	ReviewBoardService boardService;
	
	@RequestMapping("/ReviewboardView")
	public String ReviewboardView(Model model, HttpSession session) {
		
		List<ReviewBoardVO> boardList = boardService.getBoardList();
		model.addAttribute("boardList", boardList);
		return "reviewboard/ReviewboardView";
	}
	
	@RequestMapping("/ReviewboardWriteView")
	public String reviewboardWriteView(HttpSession session) {
		if(session.getAttribute("login")==null) {
			return "redirect:/loginView";
		}
		return "reviewboard/ReviewboardWriteView";
	}
	@RequestMapping("/reviewboardWriteDo")
	public String boardWriteView(ReviewBoardVO board,HttpSession session) throws Exception {
		
		MemberVO login = (MemberVO) session.getAttribute("login");
		board.setMemId(login.getMemId());
		boardService.writeBoard(board);
		
		return "redirect:/ReviewboardView";
	}
	@RequestMapping("/boardDetailView")
	public String boardDetailView(Model model,int boardNo) throws Exception {
		
	    ReviewBoardVO boardVO = boardService.getBoard(boardNo);
	    model.addAttribute("board", boardVO);
		
		return "reviewboard/boardDetailView";
	}
	
}
