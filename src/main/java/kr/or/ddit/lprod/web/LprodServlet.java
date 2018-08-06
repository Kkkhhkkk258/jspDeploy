package kr.or.ddit.lprod.web;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.lprod.model.LprodVO;
import kr.or.ddit.lprod.service.LprodService;
import kr.or.ddit.lprod.service.LprodServiceInf;

/**
 * Servlet implementation class LprodServlet
 */
@WebServlet("/lprodServlet")
public class LprodServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		LprodServiceInf lpdService = new LprodService();
		
		String pageStr = request.getParameter("page");
		String pageSizeStr = request.getParameter("pageSize");
		int page = pageStr == null ? 1 : Integer.parseInt(pageStr);
		int pageSize = pageSizeStr == null ? 10 : Integer.parseInt(pageSizeStr);
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("page", page);
		map.put("pageSize", pageSize);
		
		Map<String, Object> result = lpdService.getLprodPageList(map);
		List<LprodVO> lpdList = (List<LprodVO>) result.get("lpdList");
		
		String navi = (String) result.get("navi");
		
		
		request.setAttribute("lpdList", lpdList);
		request.setAttribute("navi", navi);
		request.getRequestDispatcher("/lprod/lprod.jsp").forward(request, response);
		
	}

	

}
