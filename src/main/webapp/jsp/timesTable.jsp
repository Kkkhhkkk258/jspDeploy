<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table style="border : solid blue 1px">
		
		
	<%for(int i = 2; i <10; i++){ %>
	<tr>
		<% for(int j = 1; j <10 ; j++){ %>
			<td style="border : solid skyblue 1px"><%=i%>*<%=j %>=<%=i*j%></td>
		<%} %>
	</tr>
	<%} %>
	
	</table>
</body>
</html>