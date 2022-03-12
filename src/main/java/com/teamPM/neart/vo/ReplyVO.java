package com.teamPM.neart.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

/*이름      널? 유형     
------- -- ------ 
BGROUP     NUMBER 
BSTEP      NUMBER 
BINDENT    NUMBER 
BID        NUMBER   */

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class ReplyVO {
	private int bgroup; //원본글그룹
	private int bstep; //
	private int bindent;
	private int bid;
}
