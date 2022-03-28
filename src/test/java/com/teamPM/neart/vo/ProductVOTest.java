package com.teamPM.neart.vo;

import static org.junit.jupiter.api.Assertions.assertNotNull;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import com.teamPM.neart.vo.ProductVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@SpringBootTest
class ProductVOTest {
	
	
	// 주입
	private int productid = 55; // 작품번호
	private String productname = "느멜랑작품"; // 작품이름
	private String productcontent = "비싼거임 암튼 비쌈"; // 작품 설명
	private String artist = "느멜랑"; // 작가
	private String productsize = "80x80"; // 작품크기
	private int stock = 8; // 작품수량
	private int price = 69000; // 작품가격
	private int producthit = 150; // 조회수
	private int imgid = 2;
	private String filePath = "asdasdasd.jpg"; // aws S3 경로
	private int typeid = 32; // 자동으로 올라가는 시퀀스pk
	private String imgtype = "상품"; // 리뷰 혹은 상품 설정
	
	ProductVO vmVO = new ProductVO();
	
	
	@Test
	void contextLoads() {
		assertNotNull(vmVO);
		log.info("product vo test");
		
	}

}
