<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Result</h1>
<h2><%=request.getAttribute("sumResult") %></h2>

<%
	HttpSession sess = request.getSession();
%>

 <h3>기본 객체 session : <%=session.getAttribute("sumResult") %></h3> 
</body>
</html>