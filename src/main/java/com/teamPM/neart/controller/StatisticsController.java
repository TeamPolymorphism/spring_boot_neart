package com.teamPM.neart.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.teamPM.neart.service.StatisticsService;

import lombok.extern.slf4j.Slf4j;

//
@Slf4j
@RestController
@RequestMapping("/statistics")
public class StatisticsController {

	@Autowired
	private StatisticsService statisticService;
	


	@GetMapping("/income")
	public ModelAndView adminDonationStat(ModelAndView mav)throws Exception {

		
		SimpleDateFormat yy = new SimpleDateFormat("yyyy");
		SimpleDateFormat mm = new SimpleDateFormat("MM"); 
		SimpleDateFormat dd = new SimpleDateFormat("dd");

		Date time = new Date(); 


		String year = yy.format(time);
	
		String month = mm.format(time);
		
		String day = dd.format(time);

		log.info("오늘날짜: " + year + "년 " + month + "월 " + day + "일");

		mav.addObject("year", year);
		mav.addObject("month", month);
		mav.addObject("day", day);

		mav.addObject("dailySale", statisticService.getDailySales(year, month)); // 일별
		mav.addObject("monthSale", statisticService.getMonthSales(year)); // 월별
		mav.addObject("yearSale", statisticService.getYearSales(year)); // 년별
	
		log.info("년별통계 금액: " + statisticService.getYearSales(year));
		mav.setViewName("statistics/income");

		return mav;
	}
	
	@GetMapping("/temp")
	@ResponseBody
	public Map<Integer, Integer> temp(@RequestParam(value = "month") Integer month) {
		log.info("month : " + month); 
		return statisticService.getDailySales("2021", String.valueOf(month));
	}
	


	
		

	}

