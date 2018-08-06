<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.Context"%>
<%@page import="javax.naming.InitialContext"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
		Context context = new InitialContext();

		DataSource datasource = (DataSource)context.lookup("java:comp/env/jdbc/oracleDB");

	 	Connection conn =null;
	 	try{
	 	long startTime =System.currentTimeMillis();
	 	
	 	
	 	
	 	for(int i = 0; i <100; i++){
			conn = datasource.getConnection();
		 	out.write("schema : "+ conn.getSchema()+"<br>");
		 	conn.close();
		
	 	}
	 	
	 	long endTime = System.currentTimeMillis();
	 	
	 	out.write("during : "+ (endTime - startTime)+"ms");
	 	
		
	 	}catch(SQLException e){
	 		e.printStackTrace();
	 	}finally{
	 		if(conn != null) try { conn.close();} catch (SQLException e2) {	}
	 	}
	 	//localhost:8180/jsp/jdbc/jndi.jsp
	 	
	 	
	 
	 %>
</body>
</html>