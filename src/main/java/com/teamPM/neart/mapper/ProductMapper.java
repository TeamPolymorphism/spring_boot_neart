package com.teamPM.neart.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.teamPM.neart.page.Criteria;
import com.teamPM.neart.vo.ProductVO;


@Mapper
public interface ProductMapper {

	/*
	 * 01. 사진포함 상품 목록
	 * 
	 * */
	public int getTotalCount(); 
	List<ProductVO> getProductList(); 
	
	

	/*
	 * 02. 상품 상세 조회
	 * 
	 * */
	public ProductVO detailProduct(int productid);	// 작품 조회(content view) > 상품상세페이지	
	public void upHitProduct(int productid);  // 조회수

	

	/*
	 * 03. 상품 등록 
	 * 
	 * */
	public void insertProduct(ProductVO productboard);  // db넣기 실행
	@Select("select typeid from imagetype where imgtype = #{imgtype}")
	int getImageType(String imgtype);		// 카테고리 선정(리뷰게시판 사진인지 상품 사진인지)
	@Insert("insert into imagetype(typeid, imgtype, imgid) values(imagetype_seq.nextval, #{imgtype}, image_seq.currval)")
	int insrtImageType(String imgtype);    // 작품 등록시 이미지 카테고리 null값 방지 위해 추가
	@Insert("insert into image(imgid, filePath, productid) values(image_seq.nextval, #{filePath}, product_seq.currval)") 
	void insertImage(String image_name);   // 작품 사진(image)업로드
	
	
	
	/*
	 *  04. 상품 삭제 
	 * 
	 * */	
	public void deleteProduct(int productid);  
	@Delete("delete from image where productid=#{productid}")
	void deleteImage(int productid);    // 작품 사진(image)삭제 -- image테이블 먼저 삭제후 product 테이블 삭제함
	@Delete("delete from imagetype where imgid=#{imgid}")
	void deleteImageType(int imgid); // imagetype 테이블 정보 또한 삭제
	@Delete("delete from cart where productid=#{productid}")
	void deleteCartImg(int productid); // cart에 있는 관련 상품 삭제
	
	
	
	/*
	 *  05. 상품 수정
	 * 
	 * */	
	public void modifyProduct(ProductVO productboard);  
	


   
}