package com.teamPM.neart.page;

import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

import com.teamPM.neart.page.Criteria;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Setter
@Getter
public class PageVO {
	
	// 페이징처리 할때 필요한 정보들
		private int startPage; // 화면에 보여지는 페이지 시작번호
		private int endPage; // 화면에 보여지는 페이지 끝번호

		// 예) startPage:1 endPage:10 ====> 1 2 3 4 5 6 7 8 9 10
		// 예) startPage:1 endPage:5 ====> 1 2 3 4 5
		// 예) startPage:11 endPage:20 ====> 11 12 13 14 15 16 17 18 19 20
		
		private boolean pre, next; // 이전과 다음으로 이동가능한 링크표시

		// '<<'버튼 출력여부
		// '>>'버튼 출력여부
		
		
		private int total; // 전체 게시판 글수
		private Criteria cri;

		// 생성자
		//total 외부에서 받아와야 함 
		public PageVO(Criteria cri, int total) {
			this.cri = cri;
			this.total = total;

			// Math.ceil(.95); // 1
			// Math.ceil(4); // 4
			// Math.ceil(7.004); // 8
			// Math.ceil(-0.95); // -0
			// Math.ceil(-4); // -4
			// Math.ceil(-7.004); // -7
			// endPage는 현재의 페이지 번호를 기준으로 계산함.

			// 현재 페이지가 3일 경우 : Math.ceil(3/10) * 10 = 10
			// 현재 페이지가 1일 경우 : Math.ceil(1/10) * 10 = 10
			// 현재 페이지가 10일 경우 : Math.ceil(10/10) * 10 = 10
			// 현재 페이지가 11일 경우 : Math.ceil(11/10) * 10 = 20 1.1을 올림함
			// 현재 페이지가 20일 경우 : Math.ceil(20/10) * 10 = 20
			// 현재 페이지가 21일 경우 : Math.ceil(21/10) * 10 = 30

			// Math.ceil() : 올림함수
			this.endPage = (int) (Math.ceil(cri.getPageNum() / 10.0)) * 10;  //10.0이란 <<와>>사이 숫자 개수
			// 현재페이지 정보로 부터 끝페이지에 대한 연산
			// ex) 현재 페이지(pageInfo.getPage()) = 3
			// 하단 페이징 바에 보여줄 페이징바 개수 = displayPageNum = 10개
			// 연산 : ceil(3 / 10.0) * 10 => 1 * 10 = 10까지
			// 1. (3/10.0) = 0.3
			// 2. ceil(0.3) = 1
			// 3. 1* 10 = 10
			// 1 2 3 4 5 6 7 8 9 10

			// ex2) 현재 페이지 (pageInfo.getPage()) = 13
			// 하단 페이징 바에 보여줄 페이징바 개수 = diplayPageNum = 10개
			// 연산 : ceil(13/10.0) * 10 => 2 * 10 = 20까지
			// 11 12 13 14 15 16 17 18 19 20
			
			
			this.startPage = this.endPage - 9;
			// 끝페이지 정보로 부터 현재 페이지에 대한 연산
			// ex) 현재페이지 pageInfo.getPage()) = 3
			// 끝페이지 endPage = 10
			// 하단 페이징 바에 보여줄 페이징바 개수 = displayPageNum = 10
			// 시작페이지 = (10 - 10) + 1 = 1

			// 현재페이지 3으로부터 endPage를 연산한후(10)
			// 해당 연산결과로 시작페이지의 값을 연산

			// ex) 현재페이지 pageInfo.getPage()) = 13
			// 끝페이지 endPage = 20
			// 하단 페이징 바에 보여줄 페이징바 개수 = displayPageNum = 10
			// 시작페이지 = (20 - 10) + 1 = 11
			
			

			// Total을 통한 endPage의 재계산
			// 10개씩 보여주는 경우 전체 데이터 수가 80개라고 가정하면 끝번호는 10이 아닌 8이 됨
			int realEnd = (int) (Math.ceil((total * 1.0) / cri.getAmount()));

			// 전체 총 페이지수 :
			// totalCount = select count(*) from tbl_count의 결과값
			// pageInfo.getPerPageNum = 한 화면에 출력할 행의 개수
			// ex) totalCount = 512
			// pageInfo.getPerPageNum = 10
			// tempEndPage = ceil(512 / 10.0) = 52
			// 51.2의결과를 올림 => 51페이지 까지는 한 화면당 10개의 게시물이 출력
			// 마지막 52페이지에는 0.2에 해당하는 2개의 게시물이 출력
			
			if (realEnd <= this.endPage) {
				this.endPage = realEnd;
			}
			
			// 시작번호가 1보다 큰경우 존재
			// ====> 만약 1~10페이지를 출력할 때는 좌측의 '<<'버튼 생략
			this.pre = this.startPage > 1;
			
			
			
			// realEnd가 끝번호(endPage)보다 큰 경우에만 존재
			// ====> 총 100페이지, 출력하는 페이지가 90~100일때 우측의 '>>'버튼 생략
			this.next = this.endPage < realEnd;

		}

		public String makeQuery(int page) {
			UriComponents uriComponentsBuilder = 
					UriComponentsBuilder.newInstance().queryParam("pageNum", page) // pageNum =
																												// 3
					.queryParam("amount", cri.getAmount()) // pageNum=3&amount=10
					.build(); // ?pageNum=3&amount=10
			return uriComponentsBuilder.toUriString(); // ?pageNum=3&amount=10 리턴
			
			// return "?pageNum=" + page + "&amount=" + cri.getAmount(); 이거 표현하기 위해 위에 있어보이게(?) 입력
		}


}
