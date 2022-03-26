package com.teamPM.neart.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.teamPM.neart.vo.CartVO;


public interface CartService {
	//상품상세에서 장바구니 추가
	void insertCart(CartVO cart);
	public List<CartVO> getCartList(int membernum);
	public void plusProduct(int productid);
	public void plusPrice(int productid);
	public void deleteCart(int productid);
	public CartVO cartTotalPrice(int membernum); // 각 상품에 담긴 갯수 총가격 
}