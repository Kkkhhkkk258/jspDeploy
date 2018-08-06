<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
//값을 각 영역에 설정
pageContext.setAttribute("pageScope", request.getParameter("pageScopeValue"));
request.setAttribute("requestScope", request.getParameter("requestScopeValue"));
session.setAttribute("sessionScope", request.getParameter("sessionScopeValue"));
application.setAttribute("applicationScope", request.getParameter("applicationScopeValue"));

//각 영역의 속성을 출력해줄 결과 화면으로 위림(dispatch forward)
RequestDispatcher rd = request.getRequestDispatcher("/jsp/scope/scopeResult.jsp");
rd.forward(request, response);

%>
</body>
</html>