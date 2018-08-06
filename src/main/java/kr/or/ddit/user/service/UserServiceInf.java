package kr.or.ddit.user.service;

import kr.or.ddit.user.model.UserVO;

public interface UserServiceInf {
	/**
	* Method : getUser
	* 최초작성일 : 2018. 7. 4.
	* 작성자 : PC14
	* 변경이력 :
	* @param userId
	* @return
	* Method 설명 : 사용자 상세 조회
	*/
	UserVO getUser(String userId); 
}
