package com.teamPM.neart.vo;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

/*이름        널?       유형             
--------- -------- -------------- 
BID       NOT NULL NUMBER         
BTITLE             VARCHAR2(200)  
BCONTENT           VARCHAR2(1800) 
BDATE              DATE           
BHIT               NUMBER         
SECRET             NUMBER         
BCATEGORY          NUMBER         
MEMBERNUM          NUMBER */     

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class BoardVO {
	private int bid;
	private String btitle;
	private String bcontent;
	private Timestamp bdate;
	private int bhit;
	private int secret;
	private int bcategory;
	private int membernum;
	private int bindent;
	private int bgroup;
	private int bstep;
}
