package com.teamPM.neart.vo;


import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;



@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
public class ImageVO {
	
	/*
	 *  IMGID    NOT NULL NUMBER        
		IMGNAME           VARCHAR2(200) 
		TYPEID            NUMBER        
		REVIEWID          NUMBER     
	 * */
	
	private int imgid;
    private String imgname;
    private int typeid;
    private int reviewid;
    private String filePath;



}