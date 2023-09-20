package com.petmilly.my.member.web;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.output.BrokenWriter;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.petmilly.my.member.service.MemberService;
import com.petmilly.my.member.vo.MemberVO;

@Controller
public class MemberController {
	
	@Autowired
	MemberService memberService;
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	
	@RequestMapping("/registView")
	public String registView() {
		return "member/registView";		
	}
	@RequestMapping("/registDo")
	public String registDo(HttpServletRequest request) {
		String id = request.getParameter("id");
		String pw = passwordEncoder.encode(request.getParameter("pw"));
		String nm = request.getParameter("nm");
		System.out.println("id = " + id);
		System.out.println("pw = " + pw);
		System.out.println("nm = " + nm);		
		MemberVO member = new MemberVO(id, pw, nm);
		try {
			memberService.registMember(member);
		} catch (Exception e) {
			e.printStackTrace();
			return "errorView";
		}
		return "redirect:/";
	}
	@RequestMapping("/loginView")
	public String loginView(HttpServletRequest request,Model model) {
		
		//현재 request 객체의 요청이 어느 URL로 부터 왔는
		String requestUrl= request.getHeader("Referer");
		//Controller 와 view 사이에 데이터를 전달하는 객체
		//model에 addAttribute 로 key-value 쌍의 형태로 데이터를 저장하면
		//view에서 해당 key로 사용가능함.
		model.addAttribute("fromUrl",requestUrl);
		
		return "member/loginView";
	}
	
	@RequestMapping("/loginDo")
	public String loginDo(MemberVO member, HttpSession session
			,boolean remember, String fromUrl
			,HttpServletResponse response) {
		System.out.println(member);
		MemberVO login = memberService.loginMember(member);
		
		boolean match = passwordEncoder.matches(member.getMemPw(),login.getMemPw());
		
		if(login == null||!match) {
			return "redirect:/loginView?msg=N";
		}
		session.setAttribute("login", login);
		if(remember) {
			//true쿠키 생성
			Cookie cookie = new Cookie("rememberId", member.getMemId());
			response.addCookie(cookie); //응답하는 객체에 담아서 전달
		}else {
			// 쿠키 삭제
			Cookie cookie = new Cookie("rememberId","");
			cookie.setMaxAge(0);  //쿠키뭐시기 날짜를0 으로 하면 사라짐
			response.addCookie(cookie); //응답닿는 객체에 담아서 전달
		}
		return "redirect:" + fromUrl;
	}	
	@RequestMapping("/logoutDo")
	public String logoutDo(HttpSession session
				,HttpServletRequest request) {
		//세션 종료
		session.invalidate();
		//현재 요청이 어느 URL을 바라보는지
		String requestToURL =request.getRequestURI().toString();
		System.out.println(requestToURL);
		String requestUrl= request.getHeader("Referer");
		System.out.println(requestUrl);
		return "redirect:"+requestUrl;
	}
	@RequestMapping("/mypage")
	public String mypage(HttpSession session,Model model) {
		if(session.getAttribute("login")==null) {
			return "redirect:/loginView";
		}
		MemberVO login = (MemberVO) session.getAttribute("login");
		model.addAttribute("member",login);
		return "member/mypage";
	}
	
	@PostMapping("files/upload")
	public ResponseEntity<?> uploadFiles(
			@RequestParam("uploadImage")MultipartFile uploadImage
		   ,@RequestParam Map<String,Object> map,HttpSession session) throws Exception{
		//웹접근 경로
		String webPath="/resources/memberProfile/";
		//서버 저장경로
		String folderPath = session.getServletContext().getRealPath(webPath);
		MemberVO login = (MemberVO)session.getAttribute("login");
		String imgPath = memberService.uploadProfile(login,folderPath,webPath,uploadImage);
		
		Map<String,Object> response = new HashMap<>();
		response.put("message","success");
		response.put("imagePath",imgPath);
		return new ResponseEntity<>(response,HttpStatus.OK);
	}
	
}