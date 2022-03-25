package com.teamPM.neart.security;



import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.stereotype.Service;

import com.teamPM.neart.config.oauth.OAuth2UserInfo;
import com.teamPM.neart.mapper.UserMapper;
import com.teamPM.neart.vo.AuthVO;
import com.teamPM.neart.vo.MemberVO;
import com.teamPM.neart.vo.UserCustom;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.extern.slf4j.Slf4j;


/*
 * username을 가지고 사용자 정보를 조회하고 session에 저장될 사용자 주체 정보인 
 * UserDetails를 반환하는 Interface다.
 */

@Slf4j
@Getter
@Setter
@NoArgsConstructor
public class UserCustomDetails implements UserDetails, OAuth2User {
	private MemberVO user;
	private Map<String, Object> attributes;
	//private OAuth2UserInfo oAuth2UserInfo;
	
	//UserDetails : Form 로그인 시 사용
	public UserCustomDetails(MemberVO mvo) {
		this.user = mvo;
	}
	
	/*
	 OAuth2User : OAuth2 로그인 시 사용
	 public UserCustomDetails(MemberVO mvo, Map<String, Object> attributes) {
		this.mvo = mvo;
		this.attributes = attributes;
	}
	 */
	public UserCustomDetails(MemberVO mvo, Map<String, Object> attributes) {
		this.user = mvo;
		this.attributes = attributes;
	}

	/*
	 UserDetails 구현
	 해당 유저의 권한 목록 리턴
	 */
	@Override
	 public Collection<? extends GrantedAuthority> getAuthorities() {
        List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
             System.out.println("------ 나와라");

        for (AuthVO auth : user.getAuthList()) {
           authorities.add(new SimpleGrantedAuthority(auth.getAuthority()));

        }
          System.out.println("***** 나와라");
        return authorities;
     }


	/*
	 UserDetails 구현
	 비밀번호 리턴
	 */
	@Override
	public String getPassword() {
		System.out.println("비번 나와라");
		return user.getPassword();
		
	}

	@Override
	public String getUsername() {
		System.out.println("아이디 나와라");
		return user.getName();
	}

	/*
	 UserDetails 구현
	 계정만료 여부 true: 만료안됨
	 */
	@Override
	public boolean isAccountNonExpired() {
		return true;
	}

	/*
	 UserDetails 구현
	 계정잠김 여부 true : 안잠김
	 */
	@Override
	public boolean isAccountNonLocked() {
		// TODO Auto-generated method stub
		return true;
	}

	/*
	 UserDetails 구현
	 계정 비밀번호 만료 여부 true : 만료안됨
	 */
	@Override
	public boolean isCredentialsNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}

	/*
	 UserDetails 구현
	 계정 활성화 여부 true : 활성화됨
	 */
	@Override
	public boolean isEnabled() {
		// TODO Auto-generated method stub
		return true;
	}
	
	public Map<String, Object> getAttributes() {
		return attributes;
	}
	
	public String getName() {
		return null;
	}
	
}