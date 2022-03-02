package com.teamPM.neart.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import com.teamPM.neart.vo.NoticeBoardVO;


@Mapper
public interface NoticeBoardMapper {
	List<NoticeBoardVO> getList();
	NoticeBoardVO read(int bid);
	void insert(NoticeBoardVO board);
	void delete(int bid);
	void update(NoticeBoardVO board);
	void updateHit(int bid);
	
	
	//페이징 처리 관련
	/*int getTotalCount();
	List<NoticeBoardVO> getListWithPaging(Criteria criteria);*/
}
