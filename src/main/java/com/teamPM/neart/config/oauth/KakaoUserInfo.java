package com.teamPM.neart.config.oauth;

import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;


public class KakaoUserInfo implements OAuth2UserInfo {
	private Map<String, Object> attributes;

	public KakaoUserInfo(Map<String, Object> attributes) {
		this.attributes = attributes;
	}

	@Override
	public String getProviderId() {
		// TODO Auto-generated method stub
		return String.valueOf(attributes.get("id"));
	}

	@Override
	public String getProvider() {
		// TODO Auto-generated method stub
		return "kakao";
	}

	@Override
	public String getEmail() {
		// TODO Auto-generated method stub
		return (String) ((Map) attributes.get("kakao_account")).get("email");
	}



	@Override
	public String getName() {
		// TODO Auto-generated method stub
		return (String) ((Map) ((Map) attributes.get("kakao_account")).get("profile")).get("nickname");
	}

}