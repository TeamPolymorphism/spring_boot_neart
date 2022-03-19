package com.teamPM.neart.vo;

import java.sql.Timestamp;

import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

/*
	PRODUCTID      NOT NULL NUMBER         
	PRODUCTNAME             VARCHAR2(300)  
	PRODUCTCONTENT          VARCHAR2(1800) 
	ARTIST                  VARCHAR2(300)  
	PRODUCTSIZE             VARCHAR2(200)  
	QUANTITY                NUMBER         
	PRICE                   NUMBER         
	PRODUCTDATE             DATE           
	PRODUCTHIT              NUMBER   
 */

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
public class ProductVO {
	private int productid; // 작품번호
	private String productname; // 작품이름
	private String productcontent; // 작품 설명
	private String artist; // 작가
	private String productsize; // 작품크기
	private int quantity; // 작품수량
	private int price; // 작품가격
	private Timestamp productdate; // 등록날짜
	private int producthit; // 조회수
	private MultipartFile file; 

	/*
	 * IMGID NOT NULL NUMBER 
	 * FILEPATH VARCHAR2(200) 
	 */

	private int imgid;
	private String filePath; // aws S3 경로
	
	
	/*
	TYPEID  NOT NULL NUMBER        
	IMGTYPE          VARCHAR2(200) 
 * */
	
	private int typeid; // 자동으로 올라가는 시퀀스pk
	private String imgtype; // 리뷰 혹은 상품 설정


}