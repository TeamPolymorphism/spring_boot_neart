package com.teamPM.neart.service;

import java.util.Map;

public interface StatisticsService {

	
	// 일별 매출액 통계		
	 Map<Integer, Integer> getDailySales(String year, String month);
	// 월별 매출액 통계		
	 Map<Integer, Integer> getMonthSales(String year);
	// 연 매출액 통계		
	 int getYearSales(String year);
	
}
