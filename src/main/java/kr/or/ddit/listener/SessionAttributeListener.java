package kr.or.ddit.listener;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;

import kr.or.ddit.user.model.UserVO;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class SessionAttributeListener implements HttpSessionAttributeListener {
	
	private  Logger logger = LoggerFactory.getLogger(SessionAttributeListener.class);
	private Map<String, UserVO> loginSessionMap = new HashMap<String, UserVO>(); 

	@Override
	public void attributeAdded(HttpSessionBindingEvent se) {
		
		
		logger.debug("session attr added");
		logger.debug("se.getName() : "+se.getName()); 
		//login : 사용자가 정상적으로 로그인을 할 경우 session에 userVO설정
		//listener에서 userVO가 값이 설정되는지를 모니터링 하면 현재 접속한 사용자수를 관리할 수 있다
		
		if(se.getName().equals("userVO")){
			se.getSession().getServletContext().setAttribute("loginSessionMap", loginSessionMap);
			UserVO userVO  = (UserVO) se.getValue();
			loginSessionMap.put(userVO.getUserId(), userVO);
		}
		

	}

	@Override
	public void attributeRemoved(HttpSessionBindingEvent se) {
		if(se.getName().equals("userVO")){
			UserVO userVO  = (UserVO) se.getValue();
			loginSessionMap.remove(userVO.getUserId(), userVO);
		}
		logger.debug("session attr removed");

	}

	@Override
	public void attributeReplaced(HttpSessionBindingEvent se) {
		logger.debug("session attr replaced");
	}

}
