package com.teamPM.neart.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.teamPM.neart.security.UserCustomDetailsService;
import com.teamPM.neart.service.MemberService;
import com.teamPM.neart.vo.MemberVO;
import com.teamPM.neart.vo.OrderdetailsVO;

import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@AllArgsConstructor
@Controller
public class OrderDetailsController {

	@Autowired
	private MemberService memberService;

	@Autowired
	UserCustomDetailsService UserCustomDetailsService;

	@RequestMapping("/orderdetails")
	public String orderdetails(OrderdetailsVO orderdetailsVO, Model model) {

		log.info("orderdetails() ..");
		log.info("OrderdetailsVO" + orderdetailsVO);

		int membernum = orderdetailsVO.getMembernum();

		model.addAttribute("orderdetails_view", memberService.detail(membernum));

		return "/user/orderdetails";

	}
	

}
