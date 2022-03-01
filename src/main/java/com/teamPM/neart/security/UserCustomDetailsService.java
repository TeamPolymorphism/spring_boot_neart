package com.teamPM.neart.security;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.teamPM.neart.mapper.UserMapper;
import com.teamPM.neart.vo.MemberVO;
import com.teamPM.neart.vo.UserCustom;

import lombok.Setter;
import lombok.extern.slf4j.Slf4j;


/*
 * username을 가지고 사용자 정보를 조회하고 session에 저장될 사용자 주체 정보인 
 * UserDetails를 반환하는 Interface다.
 */

@Slf4j
@Service
public class UserCustomDetailsService implements UserDetailsService  {
	
	@Setter(onMethod_ = @Autowired)
	private UserMapper userMapper;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		
		log.warn("Load User By UserVO number: " + username);
		MemberVO vo = userMapper.getUser(username);

		log.warn("queried by UserVO mapper: " + vo);

		return vo == null ? null : new UserCustom(vo);		
	}
}