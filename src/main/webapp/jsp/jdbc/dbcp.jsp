<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Connection"%>
<%@page import="org.apache.commons.dbcp2.BasicDataSource"%>
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
String driverClassName = "oracle.jdbc.driver.OracleDriver";
	 	String url="jdbc:oracle:thin:@localhost:1521:xe";
	 	String userName="pc26";
	 	String pass= "java";
	 	
	 	int poolSize = 10;
	 	
	 	BasicDataSource bds = new BasicDataSource();
	 	bds.setDriverClassName(driverClassName);
	 	bds.setUrl(url);
	 	bds.setUsername(userName);
	 	bds.setPassword(pass);
	 	bds.setInitialSize(poolSize);
	 	
	 	Connection conn =null;
	 	try{
	 	long startTime =System.currentTimeMillis();
	 	
	 	
	 	
	 	for(int i = 0; i <50; i++){
			conn = bds.getConnection();
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
	 	//localhost:8180/jsp/jdbc/dbcp.jsp
	 	
	 	
	 
	 %>
	 	
	 	
</body>
</html>