package kr.or.ddit.board.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import kr.or.ddit.board.model.BoardVO;

public class BoardService implements BoardServiceInf {

	/**
	* Method : getBoardList
	* 최초작성일 : 2018. 7. 5.
	* 작성자 : PC14
	* 변경이력 :
	* @return
	* Method 설명 : 게시글 목록 조회
	*/
	@Override
	public List<BoardVO> getBoardList() {
		List<BoardVO> boardList = new ArrayList<BoardVO>();
		//db에서 조회가 되었다고 가정하고 임의의 값을 리턴
		boardList.add(new BoardVO("첫번째 글입니다", "첫번째 내용", "blue", "고양이", new Date()));
		boardList.add(new BoardVO("두번째 글입니다", "두번째 내용", "red", "강아지", new Date()));
		boardList.add(new BoardVO("세번째 글입니다", "세번째 내용", "orange", "물고기", new Date()));
		boardList.add(new BoardVO("네번째 글입니다", "네번째 내용", "yellow", "기린", new Date()));
		boardList.add(new BoardVO("다섯번째 글입니다", "다섯번째 내용", "pink", "팬더", new Date()));
		
		return boardList;
	}

}
