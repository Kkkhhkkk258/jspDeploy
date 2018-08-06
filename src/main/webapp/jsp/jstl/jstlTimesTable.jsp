<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>JSTL TimesTable</h2>
	<table style="border: solid blue 2px; padding : 5px">
		<c:forEach begin="2" end="9" var="i">
			<tr>
				<c:forEach begin="1" end="9" var="j">
					<td style="border: solid lime 1px; padding : 5px">${i}*${j }=${i*j }</td>
				</c:forEach>

			</tr>
		</c:forEach>
	</table>



</body>
</html>