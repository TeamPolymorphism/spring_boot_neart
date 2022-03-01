package com.teamPM.neart.vo;


import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;


/*
 * 		AUTHORITYID	NUMBER
		AUTHORITY	VARCHAR2(50 BYTE)
		MEMBERNUM	NUMBER
 */

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
public class AuthVO {
	private String authorityid;
	private String authority;
	private int membernum;
	

}