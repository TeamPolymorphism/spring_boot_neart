package com.teamPM.neart.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.teamPM.neart.page.Criteria;
import com.teamPM.neart.vo.ProductVO;


@Mapper
public interface ProductMapper {

	public int getTotalCount(); // 페이징 전체
	List<ProductVO> getProductList(Criteria criteria); 
	
	public ProductVO detailProduct(int productid);	// 작품 조회(content view) > 상품상세페이지
	public void insertProduct(ProductVO productboard);	// 작품 등록 (write view)
	public void deleteProduct(int productid);// 작품 삭제
	public void modifyProduct(ProductVO productboard);// 작품 수정(modify)
	public void upHitProduct(int productid);// 조회수



   
}