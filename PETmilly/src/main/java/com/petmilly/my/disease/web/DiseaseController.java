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
        // ���� �������� �����͸� ó���ϴ� ������ �ۼ��մϴ�.
        // model�� ����Ͽ� ��� �����͸� ��� ������ �� �ֽ��ϴ�.
        
        // ����: ���� �����͸� �α׿� ���
        System.out.println("���� 1�� ��: " + q1);
        System.out.println("���� 2�� ��: " + q2);
        System.out.println("���� 3�� ��: " + q3);
        // �ٸ� �����鿡 ���� �����͵� ó��
        
        return "views/resultPage1.jsp"; // ����� ������ �� �������� �̵�
    }
}
