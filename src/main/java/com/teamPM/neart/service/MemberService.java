package com.teamPM.neart.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.teamPM.neart.mapper.UserMapper;
import com.teamPM.neart.vo.MemberVO;
import com.teamPM.neart.vo.OrderdetailsVO;

import lombok.NoArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@NoArgsConstructor
@Service
public class MemberService {

  // @Autowired
  // private BCryptPasswordEncoder passEncoder; //BCryptPasswordEncoder는 암호화 시키는 객체
   private BCryptPasswordEncoder passEncoder = new BCryptPasswordEncoder();
   
   @Autowired
   private UserMapper userMapper;

   //@Transactional(rollbackFor = Exception.class)
   public void addUser(MemberVO userVO) {
	   
	  System.out.println("==========addUser:"+userVO.getId() +","+userVO.getPassword());
      String password = userVO.getPassword();
      String encode = passEncoder.encode(password); //암호화

      userVO.setPassword(encode);//암호화 시킨 것을 집어넣음

      userMapper.insertUser(userVO);//db에 insert시킴
      userMapper.insertAuthorities(userVO);
   }
   
   public MemberVO read(String id){
	   
		log.info("get() ..");
		
		return userMapper.read(id);
	}
  
  public void modify(MemberVO memberVO) { 
	   
		log.info("modify() ..");
		
		userMapper.update(memberVO);
	}
  
  public void delete(String id) {
	   
	   log.info("delete()...");
	   
	   userMapper.delete(id);
  }
  
	/*
	 * public void remove(String id) {
	 * 
	 * log.info("remove()...");
	 * 
	 * userMapper.remove(id); }
	 */
 
 public void withdraw(MemberVO memberVO) {
	   
	   log.info("withdraw()...");
	   
	   userMapper.withdraw(memberVO);
 }
 
 public void orderdetails(OrderdetailsVO orderdetailsVO) {
	   
	   log.info("orderdetails()...");
	   
	  userMapper.orderdetails(orderdetailsVO);
}
 
 //OrderdetailsVO orderdetailsVO
 public OrderdetailsVO detail(int membernum){
	   
		log.info("get() ..");
		
		return userMapper.detail(membernum);
	}
   
   public void addAdmin(MemberVO userVO) {
	   
		  //System.out.println("==========addUser:"+userVO.getUsername() +","+userVO.getPassword());
		   System.out.println("==========addUser:"+userVO.getId() +","+userVO.getPassword());
		   
	      String password = userVO.getPassword();
	      String encode = passEncoder.encode(password);

	      userVO.setPassword(encode);

	      userMapper.insertUser(userVO);
	      userMapper.insertAuthoritiesAdmin(userVO);
	   }
}