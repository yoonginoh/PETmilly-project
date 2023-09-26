package com.petmilly.my.commons.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.petmilly.my.commons.service.CodeService;
import com.petmilly.my.commons.vo.CodeVO;

@RestController  // rest api �삎�떇 �쟾�슜而⑦듃濡ㅻ윭
@RequestMapping("/api")
public class CodeController {
	@Autowired
	private CodeService codeService;
	
	@GetMapping("/getSubCodes")
	public List<CodeVO> getSubCodes(@RequestParam String commParent){
		List<CodeVO> comList = codeService.getCodeList(commParent);
		List<CodeVO> ab = codeService.getCodeList(null);
		System.out.println(ab);
		return comList;
	}
	
}
