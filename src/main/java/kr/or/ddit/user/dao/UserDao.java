package kr.or.ddit.user.dao;

import kr.or.ddit.user.model.UserVO;

public class UserDao implements UserDaoInf {

	/**
	* Method : getUser
	* 최초작성일 : 2018. 7. 4.
	* 작성자 : PC14
	* 변경이력 :
	* @param userId
	* @return
	* Method 설명 : 사용자 상세 조회(fake)
	*/
	@Override
	public UserVO getUser(String userId) {
		// 원래대로라면 : orm, jdbc 등을 이용하여 db를 통해 죄회한 결과를 반환
		// servlet 테스트 목적으로 임의의 고정된 값을 반환
		UserVO userVO = new UserVO();
		userVO.setUserId("blue");
		userVO.setPassword("3535");
		
		return userVO;
	}

}
