package com.teamPM.neart.vo;


import java.sql.Timestamp;

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
	private int productid;	//작품번호
	private String productname;	//작품이름
	private String productcontent;	//작품 설명
	private String artist;	//작가
	private String productsize; //작품크기
	private int stock;	//작품재고
	private int quantity; //사용자가 살 작품 개수
	private int price;	//작품가격
	private Timestamp productdate; //등록날짜
	private int producthit; //조회수
	private int memberid; //멤버번호
	

}