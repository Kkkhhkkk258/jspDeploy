package kr.or.ddit.jstl;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.student.model.StudentVO;

/**
 * Servlet implementation class JstlServlet
 */
@WebServlet("/jstlCoreServlet")
public class JstlCoreServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	/**
	 * @see HttpServlet#doGet(HttpServletRequest req, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {

		//client -> servlet 요청 전송 --> 로직 호출(service), 결과를 기본영역에 저장(request, session)
		//view로 화면 작성을 위임(forward)
		req.setAttribute("userId", "blue");
		req.setAttribute("studentVO", new StudentVO());
		
		//사용자 : 웹 브라우저에 주소줄 입력 localhost:8180/jstlServlet
		
		//view로 위임
		RequestDispatcher rd = req.getRequestDispatcher("/jsp/jstl/core.jsp");
		rd.forward(req, response);
	}

}
