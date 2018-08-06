package kr.or.ddit.login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.jasper.tagplugins.jstl.core.Redirect;

/**
 * Servlet implementation class LogoutServlet
 */
@WebServlet("/logout")
public class LogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//1. logout 요청시 session 무효화 작업
		//2. login.jsp redirect
		
		//session획득
		HttpSession session = request.getSession();
		session.invalidate();
		
		//redirect
		response.sendRedirect("/login/login.jsp"); 
		
		//1.loginSession.jsp확인
		//2. 데이터가 없을 경우 : login.jsp에서 로그인
		//   2-1. loginsession.jsp 확인(값증가)
		//   2-2. main.jsp에서 로그 아웃
		//   2-3. loginSession.jsp에서 확인(값감소)
		//3. 데이터가 있는 경우
		//   2-1. main.jsp에서 로그아웃
		//   3-2. loginSession.jsp확인(값감소)
		
		

	}

}
