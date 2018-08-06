<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/common/jquery.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
$(document).ready(function(){
	
// 	$("#frm").submit(function(){
// 		$("select[name=locale]").Selected();
// 	});
	$("select[name=locale]").val("${param.locale}").prop("selected", true);
	$("select[name=locale]").on("change",function(){
		$("#frm").submit();
		
	});
	
});
</script>

</head>
<body>
<c:set var="userId" value="blue" />

<form id ="frm" action="/localeSelect" method="get">
<select name="locale" >
	<option value="ko">한국어</option>
	<option value="en">english</option>
	<option value="ja">日本の語</option>
</select>

</form>
<br>
<br>
<hr>
<fmt:setLocale value="${param.locale }" />
	<fmt:setBundle basename="kr.or.ddit.msg.msg" var="msg" />
	<fmt:message bundle="${msg }" key="hello" /><br>
	<fmt:message bundle="${msg }" key="visitor">
		<fmt:param value="${userId }"></fmt:param>
	</fmt:message>
</form>


</body>
</html>