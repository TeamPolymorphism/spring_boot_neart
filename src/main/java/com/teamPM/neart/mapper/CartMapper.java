package com.teamPM.neart.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.teamPM.neart.vo.BoardVO;
import com.teamPM.neart.vo.CartVO;

@Mapper
public interface CartMapper {
	public void insertCart(CartVO cart); //상품상세에서 장바구니 추가
	public List<CartVO> getCartList(int membernum); //장바구니 조회
	public void plusProduct(int productid); //상품 누적
	public void plusPrice(int productid); //가격 누적
	public int productIdChk(); //같은 상품id 있는지 체크
	
}