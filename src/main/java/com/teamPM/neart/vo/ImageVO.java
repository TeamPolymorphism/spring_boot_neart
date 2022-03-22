package com.teamPM.neart.vo;

import lombok.AllArgsConstructor;
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
		IMGID     NOT NULL NUMBER        
		FILEPATH           VARCHAR2(200) 
		PRODUCTID          NUMBER         
 
	 * */
	
	private int imgid;
    private String filePath;
    private int productid;



}