<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Signin Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="/bootstrap/bootstrap-3.3.2-dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/css/signin.css" rel="stylesheet">
    
    <%@ include file="/common/jquery.jsp" %>
    
	<script type="text/javascript">
		function getCookie(name){
			var cookies = document.cookie;
			
			var cookieArr = cookies.split("; ");
			var cookieResult = "";
			
			for(var i in cookieArr){
				var cookie = cookieArr[i];
				var cookieNamevalue = cookie.split("=");
				
				var cookieName = cookieNamevalue[0];
				var cookieValue = cookieNamevalue[1];
				
				if(name == cookieName){
					cookieResult = cookieValue;
					break;
				}
			}
			return cookieResult;
		}
		
		function setCookie(cookieName, cookieValue, expires){
			var dt = new Date();
			dt.setDate(dt.getDate()+ parseInt(expires));
			document.cookie = cookieName + "=" + cookieValue + "; path=/; expires=" +dt.toGMTString()+";";
		}
		
		function deleteCookie(cookieName){
			setCookie(cookieName,"",-1);
		}
			
			
			$(function(){
				if(getCookie("rememberMe") =="y"){
					//userId input에 userId cookie값을 설정
					$("#userId").val(getCookie("userId"));
					$("#rememberMe").attr("checked",true);
					$("#rememberMe").val(getCookie("rememberMe"));
					
				}	
				
				//체크박스 클릭 이벤트
				$("#rememberMe").on("click", function(){
					if($(this).is(":checked")){
						setCookie("rememberMe","y",30);
						setCookie("userId",$("#userId").val(),30);
					}else{
						//쿠키 제거
						deleteCookie("rememberMe");
					}
					
				});
				
			});
			
			
			
			
	</script>
    

   
  </head>

  <body>
  <!-- 
  1.사용자가 로그인화면을 접속한다(localhost:8180/login/login.jsp)
  2.사용자가 아이디, 비밀번호를 입력 후 signin 버튼을 클릭
  	-> signin 버튼이 속한 form태그의 action속성에 설정된 url로 요청
  3.LoginServlet 파라미터(userId,password)를 확인 후 고정된 값을 비교
  	-> 같을 경우 response객체의 writer 객체를 이용하여 화면에 "접속 성공"/
  	틀릴경우 "접속 실패" 메세지 출력
   -->

    <div class="container">
    session.getId(): <%=session.getId() %>

      <form class="form-signin" action="/loginServlet" method="post">
        <h2 class="form-signin-heading">Please sign in</h2>
        
        <label for="inputEmail" class="sr-only">userId</label>
        <%
//         	String userId = request.getParameter("userId");
//         	userId = userId == null ? "": userId;
        %>
        <input type="text" id="userId" name="userId"  class="form-control" placeholder="User Id" required autofocus value="${param.userId }">
        
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" id="password" name="password"  class="form-control" placeholder="Password" required>
        <div class="checkbox">
          <label>
            <input type="checkbox"  id="rememberMe" name="rememberMe"> Remember me
          </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
      </form>
      
      <%
      session.setAttribute("userId",request.getParameter("userId"));
      session.setAttribute("password",request.getParameter("password"));
        		
      application.setAttribute("userId",request.getParameter("userId"));
      application.setAttribute("password",request.getParameter("password"));
      %>

    </div> <!-- /container -->



  </body>
</html>
