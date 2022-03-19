package com.teamPM.neart.service;

import java.util.List;

import com.teamPM.neart.page.Criteria;
import com.teamPM.neart.vo.CartVO;
import com.teamPM.neart.vo.MemberVO;
import com.teamPM.neart.vo.ProductVO;



public interface ProductService {
	//public List<ProductVO> productList();
	
	public int getTotalCount();
	public List<ProductVO> getProductList(Criteria criteria); //리스트
	
	ProductVO detailProduct(int productid);	//상세페이지(조회)
	void insertProduct(ProductVO productboard);	//등록
	void deleteProduct(int productid); //삭제
	void modifyProduct(ProductVO ProductVO); //수정
	void upHitProduct(int productid); //조회수
	

}