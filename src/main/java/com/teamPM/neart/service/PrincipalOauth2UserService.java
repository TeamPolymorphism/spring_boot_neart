package com.teamPM.neart.service;

import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.oauth2.client.userinfo.DefaultOAuth2UserService;
import org.springframework.security.oauth2.client.userinfo.OAuth2UserRequest;
import org.springframework.security.oauth2.core.OAuth2AuthenticationException;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.stereotype.Service;

import com.teamPM.neart.config.oauth.KakaoUserInfo;
import com.teamPM.neart.config.oauth.NaverUserInfo;
import com.teamPM.neart.config.oauth.OAuth2UserInfo;
import com.teamPM.neart.controller.MemberController;

import com.teamPM.neart.mapper.UserMapper;
import com.teamPM.neart.security.UserCustomDetails;
import com.teamPM.neart.vo.MemberVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class PrincipalOauth2UserService extends DefaultOAuth2UserService {
	
	@Autowired
	private UserMapper mapper;
	
	@Override
	public OAuth2User loadUser(OAuth2UserRequest userRequest) throws OAuth2AuthenticationException {
		log.info("login oauth2service");

	      OAuth2User oauth2User = super.loadUser(userRequest); // 회원 프로필 조회
	      // 소셜 로그인 버튼 클릭->소셜 로그인창->로그인완료->code리턴(oauth2-client)->accessToken
	      // userRequest 정보
	      // userRequest 정보 -> 회원프로필 조회(loaduser 함수)-> 소셜로부터 회원 프로필을 받아준다.

	      log.info("userRequest clientRegistration" + userRequest.getClientRegistration());// code를 통해 구성한 정보
	      log.info("getAccessToken" + userRequest.getAccessToken());
	      log.info("oauth2User" + oauth2User);// 토큰을 통해 응답 받은 회원 정보
	      
	      OAuth2UserInfo userInfo = null;

	      if (userRequest.getClientRegistration().getRegistrationId().equals("naver")) {
	         // getRegistrationId로 어떤 oauth로 로그인했는지 확인 가능

	         userInfo = new NaverUserInfo((Map)oauth2User.getAttributes().get("response"));

	      } else if (userRequest.getClientRegistration().getRegistrationId().equals("kakao")) {

	         userInfo = new KakaoUserInfo(oauth2User.getAttributes());
	      }

	      //MemberVO mvo = mapper.getMember(userInfo.getEmail()); // 이미 가입이 되어있는지 조회
	      MemberVO mvo = mapper.getUser(userInfo.getEmail()); // 이미 가입이 되어있는지 조회

	      if (mvo == null) {// 가입되어 있지 않다면 가입진행
	         mvo = new MemberVO();
	         mvo.setId(userInfo.getEmail());
	         // 소셜은 로그인창에 아이디와 비밀번호를 입력하여 로그인하지 않기때문에 아이디 컬럼에 고유식별자 삽입
	         mvo.setPassword(userInfo.getProvider() + "_" + userInfo.getProviderId()); // 비밀번호를 임의로 provider+providerId 로 생성
	         //mvo.setSignuppath(userInfo.getProvider());
	         mvo.setName(userInfo.getName());
	         //mvo.setSubemail("unknown");
	         /*
	          * mvo.setGender(userInfo.getGender()); mvo.setPhone(userInfo.getMobile());
	          * mvo.setBirth(Date.valueOf(userInfo.getBirthyear() + "-" +
	          * userInfo.getBirthday())); // string 을 오라클의 Date로 // 변환, yyyy-mm-dd형식으로 // 포맷팅
	          */
	         
	         mapper.memberJoin(mvo); //가입정보 디비에 입력
	         mapper.insertAuth(mvo);// 권한 db에 입력
	         
	         //mvo = mapper.getMember(userInfo.getEmail());
	         mvo = mapper.getUser(userInfo.getEmail());

	      }

	      //return new UserCustomDetails(mvo, oauth2User.getAttributes());
	      return new UserCustomDetails(mvo, userInfo.getAttributes());
	}
}