package kr.or.ddit.login;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.user.model.UserVO;
import kr.or.ddit.user.service.UserService;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		//파라미터를 받아서 sysout으로 console창에 출력
		response.setContentType("text/html; charset=utf-8");
		
		PrintWriter pw = response.getWriter();
		String userId = request.getParameter("userId");
		String password = request.getParameter("password");
		
		//로그인 프로세스
		// 가짜(fake) service, dao객체를 생성
		UserService service = new UserService();
		UserVO userVO = service.getUser(userId);
		
		//userService에서 받아온 userVO의 정보와 사용자가 입력한 정보가 동일한 경우 
		//로그인 성공 -> forward /main.jsp 
		//정보가 틀릴경우
		//로그인 실패 -> redirect /login.jsp
		
		//로그인 성공시 userVO 객체를 저장하여 (적당한 영역에)
		//main.jsp에서 사용자 아이디를 화면에 출력
		//단, 새로운 탭에서 main.jsp를 직접 접속해도 사용자 아이디가 화면에 나와야한다
		
		if(userVO.validateUser(userId, password)){
			//System.out.println("[login Success]");
			//pw.write("[Login Success!! 로그인 성공]");
			request.getSession().setAttribute("userId", userId);
			request.getSession().setAttribute("password", password);
			
			request.getSession().setAttribute("userVO", userVO);
			request.getServletContext().setAttribute("userVO", userVO);
			
			request.getRequestDispatcher("/main.jsp").forward(request, response);
			
		}else{
			request.getRequestDispatcher("/login/login.jsp").forward(request, response);
		}
		
		System.out.println("userId :" + userId);
		System.out.println("password :" + password);
	}

}
