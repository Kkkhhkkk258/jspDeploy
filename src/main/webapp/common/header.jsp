<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String userId = (String) request.getAttribute("userId");
	userId = userId == null? "":userId;
%>
<h2 style="color:red">[<%=userId %>]Header.jsp</h2>
