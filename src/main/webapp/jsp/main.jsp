<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>main.jsp</h2>
	userVO : <%=application.getAttribute("userVO") %>
	<br><hr>
	userId : <%=session.getAttribute("userId") %>
	password : <%=session.getAttribute("password") %>
	
	<hr>
	<a href="/boardList">게시판 조회</a>
	
</body>
</html>