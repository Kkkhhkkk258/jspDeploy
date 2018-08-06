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
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
$(function(){
	//주소찾기 버튼 클릭 이벤트
	$("#findAddr").click(function(){
    new daum.Postcode({
        oncomplete: function(data) {
            $("#addr1Label").text(data.address);
            $("#addr1Input").val(data.address);
            
            $("#zipcdLabel").text(data.zonecode);
            $("#zipcd").val(data.zonecode);
            
            //상세주소를 공백으로 초기화
            $("#addr2").val("");
        }
    }).open();
		
	});
	//학생 수정 버튼 클릭 이벤트
	$("#updateBtn").on("click", function(){
		//학생 이름, 상세주소
		if($("#name").val().length < 2){
			alert("학생이름을 입력해주세요");
			$("#name").focus();
			return false;
		}
		if($("#addr2").val().length < 2){
			alert("상세주소를 입력해주세요");
			$("#addr2").focus();
			return false;
		}
		//여기까지 진행되면 validation통과 --> submit
		console.log($("#frm").serialize());
		$("#frm").submit();
	});
});
</script>



</head>

<body>
<!-- top.jsp -->
	<%@ include file="/common/top.jsp" %>
	<div class="container-fluid">
		<div class="row">

			<!-- left.jsp -->
		<%@ include file ="/common/left.jsp" %>
			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">


				<form id="frm" action="/studentUpdate"  method="post" class="form-horizontal" role="form" enctype="multipart/form-data">
				
					<div class="form-group">
						<label for="id" class="col-sm-2 control-label">프로필</label>
						<div class="col-sm-10">
							<img  src="/pic?id=${stdVO.id }">
							<input type="file" name="pic"enctype="multipart/form-data">
						</div>
					</div>
					
					<div class="form-group">
						<label for="id" class="col-sm-2 control-label">학생 아이디</label>
						<div class="col-sm-10">
							<label class="control-label" id="stdid" name="stdid" value="${stdVO.id }">${stdVO.id }</label>
							<input type="hidden" name="id" value="${stdVO.id }">
						</div>
					</div>

					<div class="form-group">
						<label for="name" class="col-sm-2 control-label">학생 이름</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="name" name="name"
								placeholder="이름" value="${stdVO.name }">
						</div>
					</div>
					
					<div class="form-group">
						<label for="id" class="col-sm-2 control-label">호출 횟수</label>
						<div class="col-sm-10">
							<label class="control-label">${stdVO.call_cnt }</label>
						</div>
					</div>
					
					<div class="form-group">
						<label for="addr1" class="col-sm-2 control-label">주소 1 </label>
						<div class="col-sm-10">
							<label id="addr1Label"class="control-label" encoding>${stdVO.addr1 }</label>
							<input type="hidden" name="addr1Input" value="${stdVO.addr1 }">
							<button type="button" id="findAddr">주소찾기</button>
						</div>
					</div>
					<div class="form-group">
						<label for="addr2" class="col-sm-2 control-label">주소 2 </label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="addr2" name="addr2"
								placeholder="상세주소" value="${stdVO.addr2 }">
						</div>
					</div>
					<div class="form-group">
						<label for="zipcd" class="col-sm-2 control-label">우편번호</label>
						<div class="col-sm-10">
							<label id="zipcdLabel" class="control-label">${stdVO.zipcd }</label>
							<input type="hidden" name="zipcd" value="${stdVO.zipcd }">
						</div>
					</div>
					
					<div class="form-group">
						<label for="reg_dt" class="col-sm-2 control-label">등록일자</label>
						<div class="col-sm-10">
							<label class="control-label"><fmt:formatDate value="${stdVO.reg_dt }" pattern="yyyy-MM-dd" /></label>
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button id="updateBtn" type="button" class="btn btn-default">수정</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
