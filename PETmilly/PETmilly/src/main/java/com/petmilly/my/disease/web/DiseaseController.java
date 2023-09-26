package com.petmilly.my.disease.web;


import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class DiseaseController {
	@RequestMapping("/Disease")
	public String Disease(Model model) {
		return "searchDisease/Disease";		
	}
	
	@RequestMapping("/ResultDisease")
	 public String submitSurvey1(HttpSession session, @RequestParam(name = "q1") String q1, @RequestParam(name ="q2",defaultValue = "0")  String q2, @RequestParam(name ="q3",defaultValue = "0")  String q3, Model model) {
        // 받은 설문조사 데이터를 처리하는 로직을 작성합니다.
        // model을 사용하여 결과 데이터를 뷰로 전달할 수 있습니다.
        
        // 예시: 받은 데이터를 로그에 출력
        System.out.println("질문 1의 답: " + q1);
        System.out.println("질문 2의 답: " + q2);
        System.out.println("질문 3의 답: " + q3);
        
        // 로그인이 안되어있으면 로그인 페이지로 되돌리는 기능 
        if(session.getAttribute("login")==null) {
			return "redirect:/loginView";
		}
        
        
        if (q1.equals("D") && q2.equals("1") && q3.equals("0")) {
            return "searchDisease/resultPageD1"; 
        } else if (q1.equals("D") && q2.equals("2") && q3.equals("0")) {
            return "searchDisease/resultPageD2"; 
        } else if (q1.equals("D") && q2.equals("3") && q3.equals("0")) {
            return "searchDisease/resultPageD3";
        } else if (q1.equals("D") && q2.equals("4") && q3.equals("0")) {
        	return "searchDisease/resultPageD4";
        } else if (q1.equals("D") && q2.equals("5") && q3.equals("0")) {
            return "searchDisease/resultPageD5";
        } else if (q1.equals("D") && q2.equals("6") && q3.equals("0")) {
            return "searchDisease/resultPageD6";
        } else if (q1.equals("C") && q2.equals("0") && q3.equals("1")) {       	
            return "searchDisease/resultPageC1";
        } else if (q1.equals("C") && q2.equals("0") && q3.equals("2")) {
        	return "searchDisease/resultPageC2";
        }  else if (q1.equals("C") && q2.equals("0") && q3.equals("3")) {
        	return "searchDisease/resultPageC3";
        }  else if (q1.equals("C") && q2.equals("0") && q3.equals("4")) {
        	return "searchDisease/resultPageC4";
        }  else if (q1.equals("C") && q2.equals("0") && q3.equals("5")) {
        	return "searchDisease/resultPageC5";
        }  else if (q1.equals("C") && q2.equals("0") && q3.equals("6")) {
        	return "searchDisease/resultPageC6";
        }
        return null;
    }
	
	@RequestMapping("/ResultDog1")
	public String submitSurvey2(@RequestParam(name = "d1") String d1, @RequestParam(name ="d2",defaultValue = "0")String d2, @RequestParam(name ="d3",defaultValue = "0")String d3, @RequestParam(name ="d4",defaultValue = "0")String d4, @RequestParam(name ="d5",defaultValue = "0")String d5) {
		System.out.println("질문 d1의 답: " + d1);
		System.out.println("질문 d2의 답: " + d2);
		System.out.println("질문 d3의 답: " + d3);
		System.out.println("질문 d4의 답: " + d4);
		System.out.println("질문 d5의 답: " + d5);
		if (d1.equals("1") && d2.equals("A") && d3.equals("0") && d4.equals("0") && d5.equals("0")) {
			return "searchDisease/resultPageD1A";
		} else if (d1.equals("1") && d2.equals("B") && d3.equals("0") && d4.equals("0") && d5.equals("0")) {
			return "searchDisease/resultPageD1B";
		} else if (d1.equals("2") && d2.equals("0") && d3.equals("A") && d4.equals("0") && d5.equals("0")) {
			return "searchDisease/resultPageD2A";
		} else if (d1.equals("2") && d2.equals("0") && d3.equals("B") && d4.equals("0") && d5.equals("0")) {
			return "searchDisease/resultPageD2B";
		} else if (d1.equals("3") && d2.equals("0") && d3.equals("0") && d4.equals("A") && d5.equals("0")) {
			return "searchDisease/resultPageD3A";
		} else if (d1.equals("3") && d2.equals("0") && d3.equals("0") && d4.equals("B") && d5.equals("0")) {
			return "searchDisease/resultPageD3B";
		} else if (d1.equals("4") && d2.equals("0") && d3.equals("0") && d4.equals("0") && d5.equals("A")) {
			return "searchDisease/resultPageD4A";
		} else if (d1.equals("4") && d2.equals("0") && d3.equals("0") && d4.equals("0") && d5.equals("B")) {
			return "searchDisease/resultPageD4B";
		} 
		return null;
	}
	
}
