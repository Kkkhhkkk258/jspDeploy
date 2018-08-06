<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- jstl사용을 하기 위해 taglib 지시자 작성 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- localhost:8180/jstlServlet -->
request.userId : ${userId }/ ${requestScope.userId }<br>

<!--  set : 특정영역에 변수를 새로 생성 (default : page) -->
c:set : <c:set var="test" value="testValue" /> ${test }<br>

pageContext.getAttribute("test") : <%=pageContext.getAttribute("test") %>

<h3> c:set scope</h3>
c:set : <c:set var="test" value="testSessionValue"  scope="session"/> ${test } / ${sessionScope.test }<br>

<!-- el은 영역이 작은 곳 부터 큰 곳으로 순차 검색 
	page -> request -> session -> application
-->

<h3>c:set target, property</h3>
${studentVO }<br>

<c:set target="${studentVO }" property="name" value="blue"/>
${studentVO }

</body>
</html>