package com.teamPM.neart.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teamPM.neart.mapper.CartMapper;
import com.teamPM.neart.mapper.ProductMapper;
import com.teamPM.neart.mapper.UserMapper;
import com.teamPM.neart.page.Criteria;
import com.teamPM.neart.vo.CartVO;
import com.teamPM.neart.vo.MemberVO;
import com.teamPM.neart.vo.ProductVO;

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
	public int productIdChk() {
		return cartMapper.productIdChk();
	}

	

}