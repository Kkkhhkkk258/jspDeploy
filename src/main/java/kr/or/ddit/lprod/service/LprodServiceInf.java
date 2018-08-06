package kr.or.ddit.lprod.service;

import java.util.List;
import java.util.Map;

import kr.or.ddit.lprod.model.LprodVO;

public interface LprodServiceInf {
	/**
	* Method : selectAllLprod
	* 최초작성일 : 2018. 7. 11.
	* 작성자 : PC14
	* 변경이력 :
	* @return
	* Method 설명 :모든 lprod 리스트 정보 조회
	*/
	List<LprodVO> selectAllLprod();
	
	/**
	* Method : getLprodPageList
	* 최초작성일 : 2018. 7. 11.
	* 작성자 : PC14
	* 변경이력 :
	* @return
	* Method 설명 :lprod 페이지 리스트 조회
	*/
	Map<String, Object> getLprodPageList(Map<String, Integer> map);
	
	/**
	* Method : getLprod
	* 최초작성일 : 2018. 7. 11.
	* 작성자 : PC14
	* 변경이력 :
	* @param lprod_id
	* @return
	* Method 설명 :lprod  정보 조회
	*/
	LprodVO getLprod(int lprod_id);
	
	
}
