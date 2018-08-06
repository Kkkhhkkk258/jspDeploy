package kr.or.ddit.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class BasicServlet extends HttpServlet{
	
	/**
	* Method : doGet
	* 최초작성일 : 2018. 7. 2.
	* 작성자 : PC14
	* 변경이력 :
	* @param req
	* @param resp
	* @throws ServletException
	* @throws IOException
	* Method 설명 : 현재 날짜 출력
	*/
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		PrintWriter pw = resp.getWriter();
		Date date = new Date();
		
		pw.write("hello servlet world");
		pw.write("current time : "+ date.toString());
		
		pw.close();
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		super.doPost(req, resp);
	}

	@Override
	public void destroy() {
		System.out.println("destory");
		super.destroy();
	}

	@Override
	public void init() throws ServletException {
		System.out.println("init");
		super.init();
	}
	
	
	
	
}
