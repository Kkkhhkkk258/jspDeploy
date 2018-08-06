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
<%-- SessionAttributeListener 를 통해 로그인 시 application 객체에 loginSessionMap객체를 속성으로 저장
	loginSessionMap 을 loop를 돌며 데이터 출력
 --%>
 loginSession : ${loginSessionMap.size() }
<c:forEach items="${loginSessionMap }" var="vo">
${vo.key }/${vo.value } <br>
</c:forEach>

</body>
</html>