<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="<%=application.getContextPath() %>" method="post">
	<h2>SumCalculation</h2>
	start : <input type="number" name="start"><br>
	end : <input type="number" name="end"><br>
	<button type="submit">sum</button>
	
</form>

</body>
</html>