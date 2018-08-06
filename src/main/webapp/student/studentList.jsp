<%@page import="kr.or.ddit.student.model.StudentVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


 	
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../favicon.ico">

<title>Jsp</title>

<script src="/js/jquery-1.12.4.js"></script>
<link href="/bootstrap/bootstrap-3.3.2-dist/css/bootstrap.css"
	rel="stylesheet">
<!-- Bootstrap core CSS -->
<script src="/bootstrap/bootstrap-3.3.2-dist/js/bootstrap.js"></script>
<!-- Custom styles for this template -->
<link href="/css/dashboard.css" rel="stylesheet">
<link href="/css/blog.css" rel="stylesheet">
<link href="/css/common.css" rel="stylesheet">
<script>
$(function(){
	$("table tbody tr").on("click", function(){
		//tr태그의 data-id 속성 값을 읽어서 input태그의 id값으로 설정
		//form태그를 submit
		$("#id").val($(this).data("id"));
		$("#frm").submit();
	});
})
</script>

</head>

<body>

<!-- top.jsp -->
<%@ include file="/common/top.jsp" %>
<form id="frm" action="/studentDetail" method="get">
	<input type="hidden" name="id" id="id">
</form>
	
<!-- container //-->
<div class="container-fluid">
	<!-- row //-->
	<div class="row">
			
		<!-- left.jsp -->
		<%@ include file ="/common/left.jsp" %>
		
		<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">

			<!-- row //-->
			<div class="row">
			
				<!-- blog-main //-->
				<div class="col-sm-8 blog-main">
				
					<h2 class="sub-header">학생</h2>
					<div class="table-responsive">
						<table class="table table-striped table-hover">
							<thead>
							<tr>
								<th>ID</th>
								<th>Name</th>
								<th>CALL_CNT</th>
								<th>등록일자</th>
							</tr>
							</thead>
<%-- 							<% --%>
<!-- 							List<StudentVO> stdList = (List<StudentVO>)request.getAttribute("stdList"); -->
							
<%-- 							for(StudentVO st : stdList){%> --%>
<!-- 							<tr> -->
<%-- 								<td><%=st.getId() %></td>    --%>
<%-- 								<td><%=st.getName() %></td>    --%>
<%-- 								<td><%=st.getCall_cnt() %></td> --%>
<!-- 							</tr> -->
<%-- 						 	<% }%> --%>
							<tbody>
								<c:forEach items="${stdList }" var="std">
									<tr data-id="${std.id }" data-name="${std.name }">
										<td>${std.id }</td>
										<td>${std.name }</td>
										<td>${std.call_cnt }</td>
										<td><fmt:formatDate value="${std.reg_dt }" pattern="yyyy-MM-dd" /></td>
										
									</tr>
								</c:forEach>
							</tbody>

							</table>
					</div>
			
					<a class="btn btn-default pull-right">사용자 등록</a>
			
					<div class="text-center">
						<ul class="pagination">
								
								<%=request.getAttribute("pageNavi") %>
						</ul>
					</div>
					
				</div>
				<!--// blog-main -->
			</div>
			<!--// row -->
			
		</div>
		
	</div>
	<!--// row -->
</div>
<!--// container -->

</body>
</html>
 	