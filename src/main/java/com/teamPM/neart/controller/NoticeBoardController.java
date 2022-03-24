package com.teamPM.neart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.teamPM.neart.page.Criteria;
import com.teamPM.neart.page.PageVO;
import com.teamPM.neart.service.BoardService;
import com.teamPM.neart.vo.BoardVO;

import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController
@AllArgsConstructor
public class NoticeBoardController {

	@Autowired
	private BoardService boardService;

	@GetMapping("/nlist")
	public ModelAndView
	list(ModelAndView mav, Criteria cri) {
		log.info("list..");
		mav.setViewName("board/noticeBoardList");
		mav.addObject("list", boardService.noticeGetList(cri));

		int total = boardService.noticeGetTotalCount();

		mav.addObject("pageMaker", new PageVO(cri, total));
		return mav;
	}

	@GetMapping("/n_content_view/{bid}")
	public ModelAndView content_view(BoardVO board, ModelAndView mav) {
		log.info("content..");
		mav.setViewName("board/content_view");
		mav.addObject("content_view", boardService.get(board.getBid()));

		return mav;
	}

	@GetMapping("/n_write_view")
	public ModelAndView write_view(ModelAndView mav) {
		log.info("notice_write_view..");
		mav.setViewName("board/write_view");

		return mav;
	}

	@PostMapping("/n_write")
	public ModelAndView write(BoardVO board, ModelAndView mav) {
		log.info("notice_write..");
		boardService.register(board);
		mav.setViewName("redirect:nlist");

		return mav;
	}

	@DeleteMapping("/nlist/{bid}")
	public ResponseEntity<String> delete(BoardVO board, Model model) {
		ResponseEntity<String> entity = null;
		log.info("delete..");
		try {
			boardService.removeBoard(board.getBid());
			// 삭제가 성공하면 성공 상태메시지 저장
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			// 댓글 삭제가 실패하면 실패 상태메시지 저장
			entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		// 삭제 처리 HTTP 상태 메시지 리턴
		return entity;

	}

	@GetMapping("/n_modify_view/{bid}")
	public ModelAndView modify_view(BoardVO board, ModelAndView mav) {
		log.info("modify_view..");
		
		mav.setViewName("board/modify_view");
		mav.addObject("content_view", boardService.get(board.getBid()));

		return mav;
	}

	@PutMapping("/n_modify/{bid}")
	public ResponseEntity<String> modify(@RequestBody BoardVO board, Model model) {
		ResponseEntity<String> entity = null;
		log.info("modify..");
		try {
			boardService.modify(board);
			// 수정에 성공하면 성공 상태메시지 저장
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			// 수정에 실패하면 실패 상태메시지 저장
			entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		// 수정 처리 HTTP 상태 메시지 리턴
		return entity;

	}

}
