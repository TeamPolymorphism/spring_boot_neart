package com.teamPM.neart.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.teamPM.neart.page.Criteria;
import com.teamPM.neart.vo.BoardVO;
import com.teamPM.neart.vo.ReplyVO;


@Mapper
public interface BoardMapper {
	List<BoardVO> noticeGetList();
	List<BoardVO> qnaGetList();
	BoardVO read(int bid);
	ReplyVO readReply(int bid);
	void insert(BoardVO board); //공지사항 작성
	void insert2(BoardVO board); //QnA 작성
	void delete(int bid);
	void update(BoardVO board);
	void updateHit(int bid);
	
	//답글 처리 관련
	void updateShape(int bgroup, int bstep);
	void insertReply(ReplyVO board);
	void insertReply2(BoardVO board);
	void insertReplyBoard(BoardVO board);
	
	//페이징 처리 관련
	int noticeGetTotalCount();
	int qnaGetTotalCount();
	List<BoardVO> noticeGetListWithPaging(Criteria criteria);
	List<BoardVO> qnaGetListWithPaging(Criteria criteria);
}
