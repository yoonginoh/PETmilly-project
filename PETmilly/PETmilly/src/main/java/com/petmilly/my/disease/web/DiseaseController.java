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
        // ���� �������� �����͸� ó���ϴ� ������ �ۼ��մϴ�.
        // model�� ����Ͽ� ��� �����͸� ��� ������ �� �ֽ��ϴ�.
        
        // ����: ���� �����͸� �α׿� ���
        System.out.println("���� 1�� ��: " + q1);
        System.out.println("���� 2�� ��: " + q2);
        System.out.println("���� 3�� ��: " + q3);
        
        // �α����� �ȵǾ������� �α��� �������� �ǵ����� ��� 
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
		System.out.println("���� d1�� ��: " + d1);
		System.out.println("���� d2�� ��: " + d2);
		System.out.println("���� d3�� ��: " + d3);
		System.out.println("���� d4�� ��: " + d4);
		System.out.println("���� d5�� ��: " + d5);
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
