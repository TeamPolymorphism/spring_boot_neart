package com.teamPM.neart.service;

import java.util.List;

import com.teamPM.neart.vo.NoticeBoardVO;


public interface NoticeBoardService {
	List<NoticeBoardVO> getList();
	NoticeBoardVO get(int bid);
	void register(NoticeBoardVO board);
	void remove(int bid);
	void modify(NoticeBoardVO board);
	void upHit(int bid);
}
