package com.teamPM.neart.pay;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.teamPM.neart.service.MemberService;
import com.teamPM.neart.vo.MemberVO;

import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@AllArgsConstructor
@Controller
public class PayController {

   //private UserService userService =  new UserService();
   //@Autowired	
   //private MemberService memberService;

 
	@GetMapping("/subscription")
	public String subscription() {
		System.out.println("----subscription 구독 뷰페이지");
		return "/pay/subscription-detail";
	}  
	

}
