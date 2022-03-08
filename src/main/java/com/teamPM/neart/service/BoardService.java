package com.teamPM.neart.service;

import java.util.List;

import com.teamPM.neart.page.Criteria;
import com.teamPM.neart.vo.BoardVO;


public interface BoardService {
	List<BoardVO> noticeGetList(); //공지사항 게시판 출력
	BoardVO get(int bid);
	void register(BoardVO board); //공지사항 작성
	void register2(BoardVO board); //QnA 작성
	void remove(int bid);
	void modify(BoardVO board);
	void upHit(int bid);
	
	//페이징 처리 함수
	public int noticeGetTotalCount();
	public int qnaGetTotalCount();
	public List<BoardVO> noticeGetList(Criteria criteria);
	List<BoardVO> qnaGetList(Criteria criteria);
}
