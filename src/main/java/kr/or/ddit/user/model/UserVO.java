package kr.or.ddit.user.model;

import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionBindingListener;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class UserVO implements HttpSessionBindingListener{
	private Logger logger = LoggerFactory.getLogger(UserVO.class);
	private String userId;
	private String password;
	private String userNm;
	
	public UserVO(){
		
	}
	
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUserNm() {
		return userNm;
	}
	public void setUserNm(String userNm) {
		this.userNm = userNm;
	}
	
	@Override
	public String toString() {
		return "UserVO [userId=" + userId + ", password=" + password
				+ ", userNm=" + userNm + "]";
	}
	
	public boolean validateUser(String userId, String password){
		if(this.getUserId().equals(userId) && this.getPassword().equals(password)){
			System.out.println("[login Success]");
			return true;
		}else{
			return false;
		}
	}


	@Override
	public void valueBound(HttpSessionBindingEvent event) {
		//session객체에서 session.setAttribute("userVO",userVO)가 호출되었을 때
		logger.debug("httpSessionBinding valueBound"+ event.getName());
		
	}


	@Override
	public void valueUnbound(HttpSessionBindingEvent event) {
		//session객체에서 session.removeAttribute("userVO",userVO)가 호출되었을 때
		logger.debug("httpSessionUnBinding valueUnBound" + event.getName());
		
	}
	
	
}
