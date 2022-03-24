package com.teamPM.neart.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teamPM.neart.mapper.BoardMapper;
import com.teamPM.neart.page.Criteria;
import com.teamPM.neart.vo.BoardVO;
import com.teamPM.neart.vo.ReplyVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class BoardServiceImpl implements BoardService{

	@Autowired
	private BoardMapper boardMapper;
	
	@Override
	public List<BoardVO> noticeGetList() {
		return boardMapper.noticeGetList();
	}
	
	@Override
	public BoardVO get(int bid) {
		upHit(bid);
		return boardMapper.read(bid);
	}
	
	@Override
	public ReplyVO getReply(int bid) {
		return boardMapper.readReply(bid);
	}

	@Override
	public void register(BoardVO board) {
		log.info("notice_register..");
		boardMapper.insert(board);
	}

	@Override
	public void removeBoard(int bid) {
		log.info("remove..");
		boardMapper.deleteBoard(bid);
	}
	
	@Override
	public void removeReply(int bid) {
		log.info("remove..");
		boardMapper.deleteReply(bid);
	}

	@Override
	public void modify(BoardVO board) {
		log.info("modify.. " + board);
		boardMapper.update(board);
	}

	@Override
	public void upHit(int bid) {
		boardMapper.updateHit(bid);
	}

	@Override
	public int noticeGetTotalCount() {
		return boardMapper.noticeGetTotalCount();
	}

	@Override
	public List<BoardVO> noticeGetList(Criteria criteria) {
		log.info("noticeGetList()..");
		return boardMapper.noticeGetListWithPaging(criteria);
	}

	@Override
	public int qnaGetTotalCount() {
		return boardMapper.qnaGetTotalCount();
	}

	@Override
	public List<BoardVO> qnaGetList(Criteria criteria) {
		log.info("qnaGetList()..");
		return boardMapper.qnaGetListWithPaging(criteria);
	}

	@Override
	public void register2(BoardVO board) {
		log.info("QnA_register..");
		boardMapper.insert2(board);
	}

	@Override
	public void updateShape(int bgroup, int bstep) {
		log.info("updateShape..");
		boardMapper.updateShape(bgroup, bstep);
	}

	@Override
	public void insertReply(ReplyVO reply) {
		log.info("insertReply..");
		boardMapper.insertReply(reply);
	}

	@Override
	public void insertReplyBoard(BoardVO board) {
		log.info("insertReplyBoard..");
		boardMapper.insertReplyBoard(board);
	}

	@Override
	public void insertReply2(BoardVO board) {
		log.info("insertReply2..");
		boardMapper.insertReply2(board);
	}



	
	
}
