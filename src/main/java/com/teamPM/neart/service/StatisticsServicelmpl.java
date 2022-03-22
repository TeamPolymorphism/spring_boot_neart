package com.teamPM.neart.service;

import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.teamPM.neart.mapper.StatisticsMapper;

import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
@AllArgsConstructor
public class StatisticsServicelmpl implements StatisticsService{
	
	private StatisticsMapper staticsMapper;

	
	
	//일별 매출액
		@Override
		public Map<Integer, Integer> getDailySales(String year, String month) {
			System.out.println("ddddd");
			Calendar cal = Calendar.getInstance();
	        cal.set(Integer.parseInt(year), Integer.parseInt(month), 1);
			
			Map<Integer, Integer> dailySale = new HashMap<>();
			
			for(int i=1; i <= cal.getActualMaximum(Calendar.DAY_OF_MONTH); i++) {
				dailySale.put(i, staticsMapper.getDailySale(year, month, String.valueOf(i)));
			}
			
			return dailySale;
		}
	
	
	//월별 매출액
	@Override
	public Map<Integer, Integer> getMonthSales(String year) {
		
		Map<Integer, Integer> monthSale = new HashMap<>();
		
		for(int i= 1; i <13; i++) {
			monthSale.put(i, staticsMapper.getMonthSale(year, String.valueOf(i)));
		}
		
		return monthSale; 
	}
	
	
	//연 매출액
	@Override
	public int getYearSales(String year) {
		
		return staticsMapper.getYearSale(year);
	}
	
	

}
