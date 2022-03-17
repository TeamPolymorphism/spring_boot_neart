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

	// 페이징 전체
	public int getTotalCount(); 
	List<ProductVO> getProductList(Criteria criteria); 
	
	// 작품 조회(content view) > 상품상세페이지
	public ProductVO detailProduct(int productid);	
	
	// 카테고리 선정(리뷰게시판 사진인지 상품 사진인지)
	@Select("select typeid from imagetype where imgtype = #{imgtype}")
	int getImageType(String imgtype);
	
	
	// 작품 등록 (write view)
	public void insertProduct(ProductVO productboard);	
	// 작품 사진(image)업로드
	@Insert("insert into image(imgid, filePath, productid) values(image_seq.nextval, #{filePath}, product_seq.currval)") 
	void insertImage(String image_name);
	
	// 작품 삭제
	public void deleteProduct(int productid);
	// 작품 사진(image)삭제 -- image테이블 먼저 삭제후 product 테이블 삭제함
	@Delete("delete from image where productid=#{productid}")
	void deleteImage(int product_id);
	
	// 작품 수정(modify)
	public void modifyProduct(ProductVO productboard);
	
	// 조회수
	public void upHitProduct(int productid);



   
}