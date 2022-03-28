package com.teamPM.neart.service;



import static org.junit.jupiter.api.Assertions.assertNotNull;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.transaction.annotation.Transactional;

import com.teamPM.neart.vo.MemberVO;
import com.teamPM.neart.service.MemberService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@SpringBootTest
class NeartServiceTest {

	@Autowired
	private MemberService nservice;

	@Transactional
	@Test
	public void test() {
		MemberVO mvo = new MemberVO();
		mvo.setId("as@naver.com");
		mvo.setPassword("qw12!");
		mvo.setName("테스트");
		mvo.setEmail("test@naver.cmo");
		mvo.setYear(2022);
		mvo.setMonth(12);
		mvo.setDay(12);
		mvo.setAddress("home");
		mvo.setPhonenum("010-3333-5555");
		mvo.setEnabled(1);

		nservice.addUser(mvo);

	}

	@Test
	void contextLoads() {
		assertNotNull(nservice);
		log.info("vo test");

	}

}
