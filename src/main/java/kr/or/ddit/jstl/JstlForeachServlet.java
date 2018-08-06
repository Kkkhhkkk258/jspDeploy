package kr.or.ddit.jstl;

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
 * Servlet implementation class JstlForeachServlet
 */
@WebServlet("/jstlForeachServlet")
public class JstlForeachServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//1.studentService.selectAllStudent()  
		//2. request 객체에 list 데이터 저장
		//3. foreach.jsp로 forward
		
		StudentServiceInf stdService = new StudentService();
		List<StudentVO> stdList = stdService.selectAllStudents();
		
		request.setAttribute("stdList", stdList);
		
		//foreach를 이용한 map 데이터 조회
		Map<String, String> map = new HashMap<String, String>();
		map.put("name", "blue");
		map.put("alias", "고양이");
		map.put("id", "5");
		request.setAttribute("map", map);
		
		//forTokens를 이용한  데이터
		request.setAttribute("lineRangers", "red,orange,yellow,green,blue,purple");
		
		
		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/jstl/foreach.jsp");
		rd.forward(request, response);
	}

	
}
