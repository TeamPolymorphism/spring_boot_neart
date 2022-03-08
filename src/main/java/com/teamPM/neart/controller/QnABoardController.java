package com.teamPM.neart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.teamPM.neart.page.Criteria;
import com.teamPM.neart.page.PageVO;
import com.teamPM.neart.service.BoardService;
import com.teamPM.neart.vo.BoardVO;

import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@AllArgsConstructor
public class QnABoardController {

	@Autowired
	private BoardService boardService;
	
	@GetMapping("/qnaboard/list")
	public String list(Model model, Criteria cri) {
		log.info("list..");
		model.addAttribute("list", boardService.qnaGetList(cri));
		
		int total = boardService.qnaGetTotalCount();

		model.addAttribute("pageMaker", new PageVO(cri, total));
		return "qnaboard/qnaBoardList";
	}
	
	@GetMapping("/qnaboard/write_view")
	public String write_view() {
		log.info("QnA_write_view..");
		return "qnaboard/write_view";
	}
	
	@PostMapping("/qnaboard/write")
	public String write(BoardVO board) {
		log.info("QnA_write..");
		boardService.register2(board);
	
		return "redirect:list";
	}
	
	@GetMapping("/qnaboard/content_view")
	public String content_view(int bid, Model model) {
		log.info("QnA_content_view..");
		model.addAttribute("content_view", boardService.get(bid));
		
		return "qnaboard/content_view";
	}
	
	@GetMapping("/qnaboard/modify_view")
	public String modify_view(int bid, Model model) {
		log.info("QnA_modify_view..");
		model.addAttribute("content_view", boardService.get(bid));
		return "qnaboard/modify_view";
	}
	
	@PostMapping("/qnaboard/modify")
	public String modify(BoardVO board) {
		log.info("QnA_modify..");
		boardService.modify(board);
	
		return "redirect:list";
	}
	
	@GetMapping("/qnaboard/delete")
	public String delete(BoardVO board) {
		log.info("QnA_delete..");
		boardService.remove(board.getBid());
		
		return "redirect:list";
	}

}
