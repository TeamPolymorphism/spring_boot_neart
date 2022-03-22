package com.teamPM.neart.controller;

import java.util.List;

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
		List<OrderdetailsVO> orderdetailsList = memberService.detail(membernum);
		
		orderdetailsVO.setOrderdetailsVO(orderdetailsList);
		
		model.addAttribute("orderdetails_view", orderdetailsList);
		//log.info("orderdetailsVO.getTotal()=====" + orderdetailsVO.getTotal());
		
		//model.addAttribute("orderdetails_total", orderdetailsVO.getTotal());
		
		log.info("memberService.detail(membernum)========" + memberService.detail(membernum));
		


		return "/user/orderdetails";

	}
	
	@RequestMapping("/orderreceipt")
	public String orderreceipt(OrderdetailsVO orderdetailsVO, int ordersid, Model model) {
		
		log.info("orderreceipt()..." );

		memberService.orderreceipt(orderdetailsVO.getOrdersid());
		
		
		List<OrderdetailsVO> receiptlist = memberService.receiptlist(ordersid);

		System.out.println("orderreceipt 타나여//////");
				
		model.addAttribute("orderreceipt_view", memberService.orderreceipt(ordersid));
		
		
		model.addAttribute("orderdetails_view", receiptlist);

		log.info("receiptlist()...==============================" +  memberService.receiptlist(ordersid));

		
		return "/user/orderreceipt";

	}
	
	/*
	 * @RequestMapping("/orderreceipt") public String receiptlist(OrderdetailsVO
	 * orderdetailsVO, Model model) {
	 * 
	 * log.info("receiptlist() .."); log.info("OrderdetailsVO" + orderdetailsVO);
	 * 
	 * 
	 * int ordersid = orderdetailsVO.getOrdersid(); List<OrderdetailsVO>
	 * orderdetailsList = memberService.detail(ordersid);
	 * 
	 * orderdetailsVO.setOrderdetailsVO(orderdetailsList);
	 * 
	 * model.addAttribute("orderdetails_view", orderdetailsList);
	 * //log.info("orderdetailsVO.getTotal()=====" + orderdetailsVO.getTotal());
	 * 
	 * //model.addAttribute("orderdetails_total", orderdetailsVO.getTotal());
	 * 
	 * log.info("memberService.detail(membernum)========" +
	 * memberService.detail(ordersid));
	 * 
	 * return "/user/orderreceipt";
	 * 
	 * }
	 */
	
	@RequestMapping("/orderdetailslist")
	public String orderdetailslist(OrderdetailsVO orderdetailsVO, Model model) {

		log.info("orderdetailslist() ..");
		log.info("OrderdetailsVO" + orderdetailsVO);

		
		int membernum = orderdetailsVO.getMembernum();
		List<OrderdetailsVO> orderdetailsList = memberService.detail(membernum);
		
		orderdetailsVO.setOrderdetailsVO(orderdetailsList);
		
		model.addAttribute("orderdetails_view", orderdetailsList);
		//log.info("orderdetailsVO.getTotal()=====" + orderdetailsVO.getTotal());
		
		//model.addAttribute("orderdetails_total", orderdetailsVO.getTotal());
		
		log.info("memberService.detail(membernum)========" + memberService.detail(membernum));
		


		return "/user/orderdetailslist";

	}
	
	
	
	@RequestMapping("/ordercancel")
	public String ordercancel(OrderdetailsVO orderdetailsVO, Model model) {

		log.info("ordercancel() ..");
		log.info("OrderdetailsVO" + orderdetailsVO);

		
		int membernum = orderdetailsVO.getMembernum();
		List<OrderdetailsVO> orderdetailsList = memberService.detail(membernum);
		
		orderdetailsVO.setOrderdetailsVO(orderdetailsList);
		
		model.addAttribute("orderdetails_view", orderdetailsList);
		//log.info("orderdetailsVO.getTotal()=====" + orderdetailsVO.getTotal());
		
		//model.addAttribute("orderdetails_total", orderdetailsVO.getTotal());
		
		log.info("memberService.detail(membernum)========" + memberService.detail(membernum));
		


		return "/user/ordercancel";

	}
	

}
