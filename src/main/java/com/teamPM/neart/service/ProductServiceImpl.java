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
		log.info("--------getTotalCount");
		return productMapper.getTotalCount();
	}

	//페이징 + 리스트
	@Override
	public List<ProductVO> getProductList(Criteria criteria) {
		log.info("--------getProductList(Criteria)");
		return productMapper.getProductList(criteria);
	}


	@Override
	public ProductVO detailProduct(int productid) {
		log.info("--------detailProduct");
		
		upHitProduct(productid); //조회수
		
		return productMapper.detailProduct(productid) ;
	}

	@Override
	public void insertProduct(ProductVO productboard) {
		log.info("--------insertProduct");
		productMapper.insertProduct(productboard);
		
	}

	@Override
	public void deleteProduct(int productid) {
		log.info("--------deleteProduct");
		productMapper.deleteProduct(productid);
		
	}

	@Override
	public void modifyProduct(ProductVO ProductVO) {
		log.info("--------modifyProduct");
		productMapper.modifyProduct(ProductVO);
		
	}

	@Override
	public void upHitProduct(int productid) {
		log.info("--------upHitProduct");
		productMapper.upHitProduct(productid);
		
	}
	

}