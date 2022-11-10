<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko-KR">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="../css/signUp.css">
  <script defer src="../js/signUp.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.css">
  <title>회원가입 | WATFLECHA</title>
</head>
<body>
  <div class="bg bgBlur">
    <h1 class="logo"><a href="/"><img class="logo-img" src="../img/logo2.png" style="max-width:200px; width:100%; height:auto;" alt="로고"></a></h1>
    <div class="signUp">
      <h2>회원가입</h2>
      <form class="signUp-form" action="/sriracha/join.do" name="signUp" method="POST">
        <input class="signUp-input signup-name" id='name' name="user_name" type="text" placeholder="이름">
        <p class="alert"></p>
        <input class="signUp-input signup-id" id='id' name="user_id" type="text" placeholder="아이디">
        <p class="alert"></p>
        <input class="signUp-input signup-pw" id='pw' name="user_pw" type="password" placeholder="비밀번호">
        <p class="alert"></p>
        <input class="signUp-input signup-repw" id='repw' type="password" placeholder="비밀번호 재입력">
        <p class="alert"></p>
        <select class="preference" name="genre">
          <option value="none">선호 장르 선택</option>
          <option value="액션">액션</option>
          <option value="애니메이션">애니메이션</option>
          <option value="로맨스">로맨스</option>
          <option value="스릴러">스릴러</option>
          <option value="SF">SF</option>
        </select>
        <p class="alert"></p>
        <div class="bt">
          <input class='signUp-bt' type="submit" value="회원가입"> 
          <input class='signUp-bt cancle-bt' type="button" value="취소하기" onClick="location.href='./login.jsp'">
        </div>
        <p class="guideMessage">정보를 올바르게 입력해주세요.</p>
      </form>
    </div>
  </div>
</body>
</html>			
