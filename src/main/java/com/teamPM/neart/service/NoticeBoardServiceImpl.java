package com.teamPM.neart.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teamPM.neart.mapper.NoticeBoardMapper;
import com.teamPM.neart.vo.NoticeBoardVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class NoticeBoardServiceImpl implements NoticeBoardService{

	@Autowired
	private NoticeBoardMapper noticeBoardMapper;
	
	@Override
	public List<NoticeBoardVO> getList() {
		log.info("getList()..");
		return noticeBoardMapper.getList();
	}

	@Override
	public NoticeBoardVO get(int bid) {
		upHit(bid);
		return noticeBoardMapper.read(bid);
	}

	@Override
	public void register(NoticeBoardVO board) {
		log.info("register..");
		noticeBoardMapper.insert(board);
	}

	@Override
	public void remove(int bid) {
		log.info("remove..");
		noticeBoardMapper.delete(bid);
	}

	@Override
	public void modify(NoticeBoardVO board) {
		log.info("modify.. " + board);
		noticeBoardMapper.update(board);
	}

	@Override
	public void upHit(int bid) {
		noticeBoardMapper.updateHit(bid);
	}
	
}
