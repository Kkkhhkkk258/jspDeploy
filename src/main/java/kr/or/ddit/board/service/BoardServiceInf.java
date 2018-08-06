package kr.or.ddit.board.service;

import java.util.List;

import kr.or.ddit.board.model.BoardVO;

public interface BoardServiceInf {
	/**
	* Method : getBoardList
	* 최초작성일 : 2018. 7. 5.
	* 작성자 : PC14
	* 변경이력 :
	* @return
	* Method 설명 : 게시글 목록 조회
	*/
	List<BoardVO> getBoardList();
}
