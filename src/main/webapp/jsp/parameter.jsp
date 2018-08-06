<%@page import="java.util.Enumeration"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--jsp 기본 객체(암묵적 객체, 묵시적 객체, implict object)
request, response --%>

<%
//인자 값 : 파라미터 이름
String userId = request.getParameter("userId");
String password = request.getParameter("password");

String[] userIds = request.getParameterValues("userId");
Map<String, String[]> requestMap = request.getParameterMap();
String[] mapUserIds = requestMap.get("userId");

Enumeration enumeration = request.getParameterNames();

%>
userId = <%=userId %><br>
<br>
password = <%=password %> <br>

<h2>getParameterValues</h2>
<%for(String values : userIds){ %>
id : <%=values %><br>
<%} %>
<h2>getParameterMap</h2>
<%for(String values : mapUserIds){ %>
id : <%=values %><br>
<%} %>

<h3>getParameterNames</h3>
<%while(enumeration.hasMoreElements()){ 
	String parameterName = (String)enumeration.nextElement();%>
	parameterName : <%=parameterName %><br>
<%} %>
	

</body>
</html>