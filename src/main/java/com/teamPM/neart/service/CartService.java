package com.teamPM.neart.service;

import java.util.List;

import com.teamPM.neart.vo.BoardVO;
import com.teamPM.neart.vo.CartVO;

public interface CartService {
	//상품상세에서 장바구니 추가
	void insertCart(CartVO cart);
	public List<CartVO> getCartList(int membernum);
	public void plusProduct(int productid);
	public void plusPrice(int productid);
	public int productIdChk();
}