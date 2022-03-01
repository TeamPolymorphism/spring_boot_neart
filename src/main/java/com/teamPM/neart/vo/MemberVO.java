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
 * 	MEMBERNUM	NUMBER
	ID	VARCHAR2(200 BYTE)
	PASSWORD	VARCHAR2(200 BYTE)
	NAME	VARCHAR2(200 BYTE)
	YEAR	NUMBER
	MONTH	NUMBER
	DAY	NUMBER
	ADDRESS	VARCHAR2(200 BYTE)
	PHONENUM	VARCHAR2(100 BYTE)
 */

@Slf4j
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class MemberVO {

	private int membernum;
	private String id;
	private String password;
	private String name;
	private int year;
	private int month;
	private int day;
	private String address;
	private int phonenum;
	
	private List<AuthVO> authList;
	
   
}