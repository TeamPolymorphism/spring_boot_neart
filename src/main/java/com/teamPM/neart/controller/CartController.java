package com.teamPM.neart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.teamPM.neart.mapper.UserMapper;
import com.teamPM.neart.page.Criteria;
import com.teamPM.neart.page.PageVO;
import com.teamPM.neart.security.UserCustomDetails;
import com.teamPM.neart.service.BoardService;
import com.teamPM.neart.service.CartService;
import com.teamPM.neart.service.ProductService;
import com.teamPM.neart.vo.BoardVO;
import com.teamPM.neart.vo.CartVO;
import com.teamPM.neart.vo.MemberVO;
import com.teamPM.neart.vo.ProductVO;

import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController
@AllArgsConstructor
public class CartController {
	
	@Autowired
	private CartService cartService;

	
	@PostMapping("/cart")
	public ModelAndView cart(CartVO cart, ModelAndView mav, ProductVO product) {
		log.info("cartList..");
		cartService.insertCart(cart);
		mav.setViewName("redirect:/");
		
		return mav;
	}
	
	@GetMapping("/cart")
	public boolean count(CartVO cart, ModelAndView mav, ProductVO product) {
		log.info("cartList..count");
		if(cart.getProductid() == product.getProductid()) {
			return false;
		}
		cartService.insertCart(cart);
		log.info("cartList..count");
		return true;
	}
	
	
	@GetMapping("/cart/list/{membernum}")
	public ModelAndView cartList(CartVO cart, ModelAndView mav, MemberVO member) {
		mav.addObject("cartList", cartService.getCartList(member.getMembernum()));
		mav.setViewName("cart/cartlist");
		
		return mav;
	}
	
	

}
