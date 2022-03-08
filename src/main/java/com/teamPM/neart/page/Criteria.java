package com.teamPM.neart.page;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Setter
@Getter
public class Criteria {
	
		// 페이징 처리를 위해선 페이지번호와 한 페이지당 몇 개의 데이터를 보여줄것인지 결정되어야만 한다.
		// this : 다른생성자 호출
		
		private int pageNum; // 페이지 번호
		private int amount; // 한 페이지당 몇 개의 데이터인지
		
		public Criteria() {
			this(1,10); //기본값 페이지 10개로 지정(디폴트로)
		}
		public Criteria(int pageNum,int amount) {
			this.pageNum = pageNum;
			this.amount = amount;
		}

}
