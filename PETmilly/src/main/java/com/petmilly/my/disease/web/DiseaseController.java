package com.petmilly.my.disease.web;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class DiseaseController {
	@RequestMapping("/Disease")
	public String Disease(Model model) {
//		List<SearchAHVO> searchList = service.getSearchList();
//		model.addAttribute("searchList", searchList);
		
		return "searchDisease/Disease";		
	}
	
	@RequestMapping("/ResultDisease")
	 public String submitSurvey(@RequestParam(name = "q1") String q1, @RequestParam(name ="q2",defaultValue = "0")  String q2, @RequestParam(name ="q3",defaultValue = "0")  String q3, Model model) {
        // 받은 설문조사 데이터를 처리하는 로직을 작성합니다.
        // model을 사용하여 결과 데이터를 뷰로 전달할 수 있습니다.
        
        // 예시: 받은 데이터를 로그에 출력
        System.out.println("질문 1의 답: " + q1);
        System.out.println("질문 2의 답: " + q2);
        System.out.println("질문 3의 답: " + q3);
        // 다른 질문들에 대한 데이터도 처리
        
        return "views/resultPage1.jsp"; // 결과를 보여줄 뷰 페이지로 이동
    }
}
