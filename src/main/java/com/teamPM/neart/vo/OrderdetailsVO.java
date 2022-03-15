package com.teamPM.neart.vo;

import java.sql.Timestamp;
import java.util.List;


import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
import lombok.extern.slf4j.Slf4j;



/*
	select DISTINCT 
		orders.membernum as membernum,
		orders.ordersdate as ordersdate,
        orders.ordersid as ordersid,
        ordersdetails.totalquantity as totalquantity,
        product.productname as productname,
		product.price as price 
        from orders, ordersdetails, product
        where membernum = #{membernum}
 */

@Slf4j
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class OrderdetailsVO {
	//주문내역에 필요한 VO
	int membernum;
	Timestamp orderdate;
	int orderid;
	int totalquantity;
	String productname;
	int price;
	
}