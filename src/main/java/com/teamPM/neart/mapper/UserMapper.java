package com.teamPM.neart.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

import com.teamPM.neart.vo.MemberVO;

@Mapper
public interface UserMapper {
	
   
   public MemberVO getUser(String username); // xml로 처리하겟다 = UserMapper.xml에 있음
   
   @Insert("insert into member(membernum, id, password, name, year, month, day, address, phonenum) values(member_seq.NEXTVAL,#{id},#{password},#{name},#{year},#{month},#{day},#{address},#{phonenum})")
   public int insertUser(MemberVO MemberVO);

   @Insert("insert into AUTHORITIES (authorityid,authority,membernum) values(authorities_seq.NEXTVAL,'ROLE_USER',member_seq.CURRVAL)")
   public void insertAuthorities(MemberVO MemberVO);
   
   @Insert("insert into AUTHORITIES (authorityid,authority,membernum) values(authorities_seq.NEXTVAL,'ROLE_ADMIN',member_seq.CURRVAL)")
   public void insertAuthoritiesAdmin(MemberVO MemberVO);

   
}