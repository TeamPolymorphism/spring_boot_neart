package com.teamPM.neart.vo;


import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;

import lombok.Getter;
import lombok.Setter;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Getter
@Setter
public class UserCustom extends User {
	
	@Setter(onMethod_ = @Autowired)
	private MemberVO user;
	   
	public UserCustom(String username, String password, Collection<? extends GrantedAuthority> authorities) {
		super(username, password, authorities);
	}

	public UserCustom(MemberVO user) {

		super(user.getId(), user.getPassword(), getAuth(user));

		this.user = user;
	}

	public static Collection<? extends GrantedAuthority> getAuth(MemberVO memberVO) {

		List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();

		for (AuthVO auth : memberVO.getAuthList()) {
			authorities.add(new SimpleGrantedAuthority(auth.getAuthority()));
			
		}

		return authorities;
	}
}