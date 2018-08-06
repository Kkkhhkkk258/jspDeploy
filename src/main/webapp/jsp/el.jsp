<%@page import="kr.or.ddit.student.model.StudentVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>request</h3>
표현식 : <%=request.getAttribute("requestScop") %><br>
EL : ${requestScope.requestScop }<br>
EL : ${requestScop }<br>

<h3>session</h3>
표현식 : <%=session.getAttribute("sessionScop") %><br>
EL : ${sessionScope.sessionScop }<br>
EL : ${sessionScop }<br>

<h3>application</h3>
표현식 : <%=application.getAttribute("applicationScop") %><br>
EL : ${applicationScope.applicationScop }<br>
EL : ${applicationScop }<br>

<h3>sameName</h3>
EL : ${sameName } 어떤 영역의 값을 가져오나요   --> 가장 작은 영역에서 부터 큰영역으로 검색<br>
pagecontext -> request -> session -> applicaiton <br>

<h3>Student List</h3>
표현식 : 
<table>
<tr>
<th>id</th>
<th>name</th>
<th>call_cnt</th>
</tr>
		<%
			for (StudentVO std : (List<StudentVO>) request
					.getAttribute("stdList")) {
				pageContext.setAttribute("std", std);    // 이 페이지에서만 존재하는 객체..???
		%>
		<tr>
			<td><%=std.getId()%></td>
			<td><%=std.getName()%></td>
			<td><%=std.getCall_cnt()%></td>
		</tr>
		<%} %>

	</table>
<hr>
<hr>

EL : 
	<table>
		<tr>
			<th>id</th>
			<th>name</th>
			<th>call_cnt</th>
		</tr>
		<c:forEach items="${stdList }" var="std">
			<tr>
				<td>${std.id }</td>
				<td>${std.name }</td>
				<td>${std.call_cnt }</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>