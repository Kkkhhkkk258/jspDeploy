<%@ page language="java" contentType="application/vnd.ms-excel; charset=UTF-8" pageEncoding="UTF-8"%>
<% response.setHeader("Content-Disposition", "attachment; filename=excel.xls");
   response.setHeader("Content-Description", "JSP Generated Data");
   response.setContentType("application/vnd.ms-excel"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<td>userId</td>
			<td>password</td>
		</tr>
		<tr>
			<td>blue</td>
			<td>3535</td>
		</tr>
		<tr>
			<td>red</td>
			<td>3532</td>
		</tr>
		<tr>
			<td>black</td>
			<td>2586</td>
		</tr>
		<tr>
			<td>royalblue</td>
			<td>2541</td>
		</tr>
	</table>
</body>
</html>