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
public class ImageTypeVO {
	
	/*
		TYPEID  NOT NULL NUMBER        
		IMGTYPE          VARCHAR2(200) 
		IMGID            NUMBER  
	 * */
	
    private int typeid;
    private String imgtype;
    private int imgid;



}