package com.teamPM.neart.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

import com.teamPM.neart.vo.MemberVO;
import com.teamPM.neart.vo.OrderdetailsVO;

@Mapper
public interface UserMapper {
	
   
   public MemberVO getUser(String username); // xml로 처리하겟다 = UserMapper.xml에 있음

   //ssj
   public int memberJoin(MemberVO memberVO); // xml로 처리하겟다 = UserMapper.xml에 있음
   //public MemberVO insertAuth(MemberVO memberVO); // xml로 처리하겟다 = UserMapper.xml에 있음(String username); // xml로 처리하겟다 = UserMapper.xml에 있음
   
   @Insert("insert into member(membernum, id, password, name, email, year, month, day, address, phonenum) values(member_seq.NEXTVAL,#{id},#{password},#{name},#{email},#{year},#{month},#{day},#{address},#{phonenum})")
   public int insertUser(MemberVO MemberVO);

   @Insert("insert into AUTHORITIES (authorityid,authority,membernum) values(authorities_seq.NEXTVAL,'ROLE_USER',member_seq.CURRVAL)")
   public void insertAuthorities();
   
   @Insert("insert into AUTHORITIES (authorityid,authority,membernum) values(authorities_seq.NEXTVAL,'ROLE_ADMIN',member_seq.CURRVAL)")
   public void insertAuthoritiesAdmin(MemberVO MemberVO);
   
   public MemberVO isEmail(String email);
   
   

  	//회원페이지 및 주문조회
   MemberVO read(String id);
	
   void modify(MemberVO memberVO);
   void update(MemberVO memberVO);
	
   void delete(String id);
   
   void withdraw(MemberVO memberVO);
   
   List<OrderdetailsVO> detail(int membernum);
   void orderdetails(OrderdetailsVO orderdetailsVO);

   OrderdetailsVO orderreceipt(int ordersid);
   List<OrderdetailsVO> receiptlist(int ordersid);

  
   
   
}