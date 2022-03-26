package com.teamPM.neart.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teamPM.neart.mapper.CartMapper;
import com.teamPM.neart.vo.CartVO;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;


@Slf4j
@Service
@AllArgsConstructor
public class CartServiceImpl implements CartService {
	
	@Autowired
	private CartMapper cartMapper;
	
	
	@Override
	public void insertCart(CartVO cart) {
		log.info("insertCart..");
		cartMapper.insertCart(cart);
		plusProduct(cart.getProductid());
		plusPrice(cart.getProductid());
	}


	@Override
	public List<CartVO> getCartList(int membernum) {
		log.info("getCartList..");
		return cartMapper.getCartList(membernum);
	}


	@Override
	public void plusProduct(int productid) {
		cartMapper.plusProduct(productid);
	}


	@Override
	public void plusPrice(int productid) {
		cartMapper.plusPrice(productid);
	}


	@Override
	public void deleteCart(int productid) {
		cartMapper.deleteCart(productid);
	}


	@Override
	public CartVO cartTotalPrice(int membernum) {
		//cartMapper.cartTotalPrice(membernum);
		return cartMapper.cartTotalPrice(membernum);
		
	}

}