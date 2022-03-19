package com.teamPM.neart.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

/*이름      널? 유형     
------- -- ------ 
BGROUP     NUMBER 
BSTEP      NUMBER 
BINDENT    NUMBER 
BID        NUMBER   */

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class CartVO {
	private int cartid; //카트번호
	private int price; //가격
	private int cartquantity; //상품수량
	private int membernum; //멤버번호
	private int productid; //상품번호
	private String productname; //상품명
	private String imgid; //이미지번호
	private int totalprice; //총 가격
}
