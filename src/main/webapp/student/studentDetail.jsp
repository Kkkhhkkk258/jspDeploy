<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
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


</head>

<body>
<!-- top.jsp -->
	<%@ include file="/common/top.jsp" %>
	

	<div class="container-fluid">
		<div class="row">

			<!-- left.jsp -->
		<%@ include file ="/common/left.jsp" %>
		
			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">


				<form id="frm" class="form-horizontal"  action="/studentUpdate" method="get" role="form">
					<input type="hidden" name="id" id="id" value="${stdVO.id }">
				
					<div class="form-group">
						<label for="pic" class="col-sm-2 control-label">프로필</label>
						<div class="col-sm-10">
							<img  src="/pic?id=${stdVO.id }">
						</div>
					</div>
					
					<div class="form-group">
						<label for="id" class="col-sm-2 control-label">학생 아이디</label>
						<div class="col-sm-6">
							<label class="control-label" id="stdid" name="stdid" value="${stdVO.id }">${stdVO.id }</label>
						</div>
					</div>

					<div class="form-group">
						<label for="name" class="col-sm-2 control-label">학생 이름</label>
						<div class="col-sm-6">
							<label class="control-label" id="name" name="name" value="${stdVO.name }">${stdVO.name }</label>
						</div>
					</div>
					
					<div class="form-group">
						<label for="id" class="col-sm-2 control-label">호출 횟수</label>
						<div class="col-sm-6">
							<label class="control-label">${stdVO.call_cnt }</label>
						</div>
					</div>
					
					<div class="form-group">
						<label for="text" class="col-sm-2 control-label">주소 1 </label>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="addr1" name="addr1"
								placeholder="주소1" value="${stdVO.addr1 }">
						</div>
					</div>
					<div class="form-group">
						<label for="text" class="col-sm-2 control-label">주소 2 </label>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="addr2" name="addr2"
								placeholder="주소2" value="${stdVO.addr2 }">
						</div>
					</div>
					<div class="form-group">
						<label for="text" class="col-sm-2 control-label">우편번호</label>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="zipcd" name="zipcd"
								placeholder="우편번호" value="${stdVO.zipcd }">
						</div>
					</div>
					
					
					
					<div class="form-group">
						<label for="userNm" class="col-sm-2 control-label">등록일자</label>
						<div class="col-sm-10">
							<label class="control-label"><fmt:formatDate value="${stdVO.reg_dt }" pattern="yyyy-MM-dd" /></label>
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button  type="submit" class="btn btn-default" >학생 수정</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
