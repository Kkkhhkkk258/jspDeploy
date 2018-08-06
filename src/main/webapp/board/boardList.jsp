<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.List"%>
<%@page import="kr.or.ddit.board.model.BoardVO"%>
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
List<BoardVO> boardList = (List<BoardVO>)session.getAttribute("boardList");
SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
%>
	<table>
		<thead>
		<tr>
			<th>제목</th>
			<th>사용자 아이디</th>
			<th>별명</th>
			<th>등록일(yyyy-MM-dd)</th>
		</tr>
		</thead>
		<tbody>
		<%
		System.out.println(boardList);
		for(int i = 0; i <boardList.size(); i++){ %>
			
			<tr>
				<td><%=boardList.get(i).getTitle() %></td>
				<td><%=boardList.get(i).getUserId() %></td>
				<td><%=boardList.get(i).getAlias() %></td>
				<td><%=sdf.format(boardList.get(i).getRegDt()) %></td>
			</tr>
		<%} %>
		
		</tbody>
	</table>

</body>
</html>