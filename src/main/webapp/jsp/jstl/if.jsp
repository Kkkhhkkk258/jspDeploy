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
<%-- request객체에 code속성이 "02"값으로 존재  --%>

<!-- test : 참, 거짓 조건 테스트 c:if 에는 else가 없다 -- choose가 일반적인 if -->
<c:if test="${code == '02' }">
	blue
</c:if>
<h3>c:choose</h3>
<c:choose>
	<c:when test="${code =='01' }">blue</c:when>
	<c:when test="${code =='02' }">skyblue</c:when>
	<c:when test="${code =='03' }">royalblue</c:when>
	<c:otherwise> line Rangers</c:otherwise>
</c:choose>

</body>
</html>