package kr.or.ddit.cookie.util;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

public class CookieUtilTest {
	private String cookie;
	
	@Before
	public void setup(){
		cookie ="userId=blue; rememberMe=y; checkYn=y; ";
	}
	
	@Test
	public void cookieSplitTest(){
		/***Given***/
		String[] cookies = cookie.split("; ");
		
		/***When***/

		/***Then***/
		assertEquals(3, cookies.length);
		assertEquals("userId=blue", cookies[0]);
		assertEquals("rememberMe=y", cookies[1]);
		assertEquals("checkYn=y", cookies[2]);
	}
	
	@Test
	public void cookieNameValueSplitTest(){
		/***Given***/
		String cookie = "userId=blue";
		
		/***When***/
		//cookieArr[0] = userId
		//cookieArr[1] = blue
		String[] cookieArr = cookie.split("=");
		
		/***Then***/
		assertEquals("userId", cookieArr[0]);
		assertEquals("blue", cookieArr[1]);

	}

	@Test
	public void getCookietest() {
		//userId=blue
		
		/***Given***/
		
		CookieUtil cookieUtil = new CookieUtil();
		
		/***When***/
		String cookieValue = cookieUtil.getCookie(cookie, "userId");
		
		/***Then***/
		assertEquals("blue", cookieValue);
	}

}
