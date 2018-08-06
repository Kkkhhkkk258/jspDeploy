<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--  oracle db의  student 테이블을 조회하여 화면에 출력 -->
<%
Connection conn = null;
Statement stmt = null;
ResultSet rs = null;  

try {
	//1. 드라이버 로딩
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	//2.DataBase에 접속 => Connection객체 생성
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user ="pc26";
	String pass ="java";
	conn = DriverManager.getConnection(url, user, pass);
	
	//3. Statement객체 생성(Statement객체는 Connection객체를 이용해서 생성)
	stmt = conn.createStatement();
	
	//4. SQL문을 Statement객체를 이용하여 실행하고 실행 결과를 ResultSet객체에 저장한다
	String sql = "select * from student";
	rs = stmt.executeQuery(sql);
	
	
// 	rs.afterLast();
// 	rs.beforeFirst();
	
// 	rs.first();
// 	rs.last();
	
// 	rs.previous();
	%>
	<table>
	
	<% while(rs.next()){%>
		학생 번호 :<%=rs.getInt("id") %><br>
		학생 이름 :<%=rs.getString("name")%><br>
		국어 : <%=rs.getInt("call_cnt") %><br>
		영어 : <%=rs.getString("reg_dt") %><br>
		<hr>
		
<%}%>
	</table>
	
	
	
	

		

<%} catch (SQLException e) {
	e.printStackTrace();
} catch (ClassNotFoundException e) {	
	e.printStackTrace();
}finally{
	//6. 사용했던 자원 반납
	if(rs != null) try { rs.close();} catch (SQLException e2) {	}
	if(stmt != null) try { stmt.close();} catch (SQLException e2) {	}
	if(conn != null) try { conn.close();} catch (SQLException e2) {	}
}
	
	%> 
	
	
	


</body>
</html>