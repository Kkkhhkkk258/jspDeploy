package kr.or.ddit.ctag;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.student.model.StudentVO;
import kr.or.ddit.student.service.StudentService;
import kr.or.ddit.student.service.StudentServiceInf;

/**
 * Servlet implementation class CustomtagServlet
 */
@WebServlet("/customtag")
public class CustomtagServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//학생 1페이지 리스트 조회
		//request객체 속성 설정
		//ctag.jsp로 전달
		
		StudentServiceInf stdService = new StudentService();
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("page", 1);
		map.put("pageSize", 10);
		
		List<StudentVO> stdList = (List<StudentVO>) stdService.getStudentPageList(map).get("pageList");
		
		request.setAttribute("stdList", stdList);
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/ctag/ctag.jsp");
		rd.forward(request, response);
		
	}


}
