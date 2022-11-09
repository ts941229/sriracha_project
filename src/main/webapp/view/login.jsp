<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>로그인 | SRIRACHA</title>
    <link rel="stylesheet" href="../css/reset2.css" />
    <link rel="stylesheet" href="../css/login.css" />
   <!--  <script defer src="../js/login.js"></script>  -->
  </head>
  <body>
  
    <div class="container">
      <h1 class="logo-img">
        <a href="#"> <img src="../img/logo2.png" style="max-width:200px; width:100%; height:auto;"/></a>
      </h1>
      <div class="login-box">
        <h2>로그인</h2> 
        
        	<div>
				<form action="/sriracha/login.do" method="post">
					<input class="inputBox login-id" type="text" name="user_id"
						placeholder="아이디를 입력하세요." />
					<p class="error-message-empty-id error-message"></p>
					<input class="inputBox login-pw" type="password" name="user_pw" id="user_pw"
						placeholder="비밀번호를 입력하세요." />
					<p class="error-message-empty-pw error-message"></p>
					<input type="submit" class="login-button" value="로그인" onclick="check()"/>
				</form>
				<div class="form-bottom">
            <div class="login-remember">
              <input type="checkbox" id="idRememberCB" />
              <label for="idRememberCB">아이디 정보 저장</label>
            </div>
          
          </div>
          <div class="underline"></div>
          <div class="login-other">
            <p class="no-member">회원이 아니신가요?</p>
            <button class="sign-up-go" onclick="location.href='./signUp.jsp'">회원가입</button>
          </div>
        </div>
      </div>
    </div>
  </body>
 <!--  <script>
  	function check(){
  		var input_pw = document.getElementById("user_pw").value;
  		var real_pw = document.getElementById("user_pw").value;
  		if()
  		alert("느금");
  		out
  	}
  </script> -->
</html>
