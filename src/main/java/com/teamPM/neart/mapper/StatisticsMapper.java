package com.teamPM.neart.mapper;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface StatisticsMapper {


	
	//일별 매출액
	public Integer getDailySale(String year, String month,String valueOf);
	//월별 매출액
	public Integer getMonthSale(String year, String valueOf);
	//연 매출액
	public int getYearSale(String year);

}
