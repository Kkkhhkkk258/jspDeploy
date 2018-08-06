<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<tags:logging />
<br>
	<table style="border : solid blue 2px">
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>CALL_CNT</th>
			<th>등록일자</th>
		</tr>
		<c:forEach items="${stdList }" var="std">
			<tr>
				<td>${std.id }</td>
				<td>${std.name }</td>
				<td>${std.call_cnt }</td>
				<td><fmt:formatDate value="${std.reg_dt }" pattern="yyyy-MM-dd" /></td>
			</tr>
		</c:forEach>
	</table>

<h3>Color Logging</h3>
<tags:colorLogging  color="blue" size="20"/>
<br>
	<table style="border : solid blue 2px">
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>CALL_CNT</th>
			<th>등록일자</th>
		</tr>
		<c:forEach items="${stdList }" var="std">
			<tr>
				<td>${std.id }</td>
				<td>${std.name }</td>
				<td>${std.call_cnt }</td>
				<td><fmt:formatDate value="${std.reg_dt }" pattern="yyyy-MM-dd" /></td>
			</tr>
		</c:forEach>
	</table>
<tags:colorLogging  color="blue"/><br>

<h3>Prod Select</h3>
<tags:prodSelect lgu="P102"/><br>
<tags:prodSelect lgu="P101"/><br>
<tags:prodSelect lgu="P301"/><br>

</body>
</html>