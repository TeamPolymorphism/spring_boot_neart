package com.teamPM.neart.controller;


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
public class MemberController {

   //private UserService userService =  new UserService();
   @Autowired	
   private MemberService memberService;

 
	@GetMapping("/admin/adminHome")
	public void adminHome() {
		System.out.println("----adminHome");
	}  
	
	@GetMapping("/user/userHome")
	public void userHome() {
		System.out.println("----userHome");
	}
	
	@RequestMapping("/login")
	public String loginForm() {
		System.out.println("----login 나와랑");
		return "/login/loginForm";
	}
	
   
   @GetMapping("/add/addForm")
   public String userForm() {
      log.info("Welcome userForm");
      System.out.println("----- dasdsadsadsa     -------- userForm ");
      
      return "/add/addForm";
   }

   @PostMapping("/add/addUser")
   public String addUser(MemberVO uservo) {
      log.info("post resister");
      System.out.println("----- addUser ");
      memberService.addUser(uservo);

      return "redirect:/";
   }
   
   @GetMapping("/add/addFormAdmin")
   public void addFormAdmin() {
      log.info("Welcome userForm");
      System.out.println("----- userForm ");
   }
   @PostMapping("/add/addAdmin")
   public String addAdmin(MemberVO uservo) {
      log.info("post resister");
      System.out.println("----- addUser ");
      memberService.addAdmin(uservo);

      return "redirect:/";
   }
}
