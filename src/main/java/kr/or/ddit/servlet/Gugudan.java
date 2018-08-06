package kr.or.ddit.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Gugudan
 */
@WebServlet("/Gugudan")
public class Gugudan extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Gugudan() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		PrintWriter pw = response.getWriter();
		pw.write("<!DOCTYPE html>");
		pw.write("<html>");
		pw.write("<head>");
		pw.write("<meta charset=\"UTF-8\">");
		pw.write("<title>Insert title here</title>");
		pw.write("</head>");
		pw.write("<body>");
		pw.write("hello, eclipse tomcat");
		pw.write("2018.07.02. 오후  4시 15분");
		pw.write("<table style=\"border : solid blue 1px\">");
		for(int i =2; i <10 ; i++){
			pw.write("<tr>");
			for(int j =1; j < 10; j++){
				pw.write("<td style=\"border : solid skyblue 1px\">"+i+"*"+j+"="+i*j +"</td>");
			}
			pw.write("</tr>");
		}
		pw.write("</body>");
		pw.write("</html>");
		
			
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
