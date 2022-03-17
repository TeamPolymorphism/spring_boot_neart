package com.teamPM.neart.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teamPM.neart.mapper.ProductMapper;
import com.teamPM.neart.page.Criteria;
import com.teamPM.neart.vo.ProductVO;

import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;


@Slf4j
@Service
@AllArgsConstructor
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	private ProductMapper productMapper;

	//페이징
	@Override
	public int getTotalCount() {
		log.info("--------Product--------getTotalCount");
		return productMapper.getTotalCount();
	}

	//페이징 + 리스트
	@Override
	public List<ProductVO> getProductList(Criteria criteria) {
		log.info("--------Product--------getProductList(Criteria)");
		return productMapper.getProductList(criteria);
	}


	@Override
	public ProductVO detailProduct(int productid) {
		log.info("--------Product--------detailProduct");
		
		upHitProduct(productid); //조회수
		
		return productMapper.detailProduct(productid) ;
	}

	//product & image 테이블
	@Override
	public void insertProduct(ProductVO productboard) {
		log.info("--------Product--------insertProduct");
		
		String imgtype = productboard.getImgtype();
		//get typeid from ImageType table in DB
		int typeid = productMapper.getImageType(imgtype);
		productboard.setTypeid(typeid);
		
		//테이블 각각 뽑아내기 - set product table
		productMapper.insertProduct(productboard);
		//테이블 각각 뽑아내기 - set filePath into Image table
		productMapper.insertImage(productboard.getFilePath());
		
	}

	@Override
	public void deleteProduct(int productid) {
		log.info("--------Product--------deleteProduct");
		productMapper.deleteProduct(productid);
		productMapper.deleteImage(productid);
		
	}

	@Override
	public void modifyProduct(ProductVO ProductVO) {
		log.info("--------Product--------modifyProduct");
		productMapper.modifyProduct(ProductVO);
		
	}

	@Override
	public void upHitProduct(int productid) {
		log.info("--------Product--------upHitProduct");
		productMapper.upHitProduct(productid);
		
	}
	

}