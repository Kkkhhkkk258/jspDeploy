<%@page import="kr.or.ddit.lprod.model.LprodVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


 	
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
</head>

<body>

<!-- top.jsp -->
<%@ include file="/common/top.jsp" %>
	
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
				
					<h2 class="sub-header">LPROD</h2>
					<div class="table-responsive">
						<table class="table table-striped">
							<tr>
								<th>lprod_ID</th>
								<th>lprod_Name</th>
								<th>lprod_gu</th>
								
							</tr>
							
								<c:forEach items="${lpdList }" var="lpd">
									<tr>
										<td>${lpd.lprod_id }</td>
										<td>${lpd.lprod_nm }</td>
										<td>${lpd.lprod_gu }</td>
									</tr>
								</c:forEach>

							</table>
					</div>
			
					<a class="btn btn-default pull-right">lprod등록</a>
			
					<div class="text-center">
						<ul class="pagination">
								
								<%=request.getAttribute("navi") %>
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
 	