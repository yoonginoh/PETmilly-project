package com.petmilly.my.searchAH.web;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SearchAHController {
	
	@RequestMapping("/SearchAH")
	public String searchAH() {
		return "searchAH/SearchAH";		
	}
	

}
