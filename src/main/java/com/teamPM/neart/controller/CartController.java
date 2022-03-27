package com.teamPM.neart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.teamPM.neart.service.CartService;
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
		mav.setViewName("redirect:/listProduct");
		
		return mav;
	}

	@GetMapping("/cart/list/{membernum}")
	public ModelAndView cartList(CartVO cart, ModelAndView mav, MemberVO member) {
		mav.addObject("cartList", cartService.getCartList(member.getMembernum()));
		
		mav.addObject("allprice", cartService.cartTotalPrice(member.getMembernum()));
		//cartService.cartTotalPrice(member.getMembernum());
		mav.setViewName("cart/cartlist");
		
		return mav;
	}
	
	@DeleteMapping("/cart/list/{membernum}/{productid}")
	public ResponseEntity<String> delete(CartVO cart, Model model) {
		ResponseEntity<String> entity = null;
		System.out.println(cart.getProductid());
		log.info("delete..");
		try {
			cartService.deleteCart(cart.getProductid());
			// 삭제가 성공하면 성공 상태메시지 저장
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			//삭제가 실패하면 실패 상태메시지 저장
			entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		// 삭제 처리 HTTP 상태 메시지 리턴
		return entity;

	}
	

}
