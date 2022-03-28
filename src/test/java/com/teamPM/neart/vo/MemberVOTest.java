package com.teamPM.neart.vo;

import static org.junit.jupiter.api.Assertions.assertNotNull;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import com.teamPM.neart.vo.MemberVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@SpringBootTest
class MemberVOTest {
	
	
	// 주입
	private int membernum = 26;
	private String id = "test2";
	private String password = "test2";
	private String name = "테스터2";
	private String email = "test22@naver.com";
	private int year = 2022;
	private int month = 5;
	private int day = 15;
	private String address = "테스트시 테스트구 테스트동";
	private String phonenum = "010-0111-1111";
	private int enabled = 1;
	
	private List<AuthVO> authList;
	
	MemberVO vmVO = new MemberVO();
	
	
	@Test
	void contextLoads() {
		assertNotNull(vmVO);
		log.info("member vo test");
		
	}

}
