<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko-KR">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <!-- css link -->
  <link rel="stylesheet" href="../css/modiIf.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.css">
  <link
  rel="stylesheet"
  href="https://use.fontawesome.com/releases/v5.2.0/css/all.css"
  />

  <!-- js link -->
  <script defer src="../js/modiIf.js"></script>

  <title>정보수정 | WATFLECHA</title>
</head>
<body>
  <div class="bg bgBlur">
    <h1 class="logo"><a href="./main.jsp"><img class="logo-img" src="../img/logo2.png" style="max-width:200px; width:100%; height:auto;" alt="로고"></a></h1>
    <div class="modiIf">
      <form class="modiIfForm">
        <h2>회원 정보수정</h2>
        <input class="modiIf-content modiIf-id" id='id' type="text" placeholder="${session_id}" readonly>
        <p class="alert nameMessage">이름 변경 희망시 입력하세요</p>
        <div class="iconInput">
          <i class="fas fa-pen penIcon"></i>
          <input class="modiIf-content modiIf-name" id='name' type="text" placeholder="이름" disabled>
          <p class="alert"></p>
        </div>
        <p class="alert pwMessage">비밀번호 변경 희망시 입력하세요</p>
        <div class="iconInput">
          <i class="fas fa-pen penIcon2"></i>
          <input class="modiIf-content modiIf-curPw pw" id='curPw' type="password" placeholder="현재 비밀번호" disabled>
          <p class="alert"></p>
        </div>
        <input class="modiIf-content modiIf-pw pw" id='pw' type="password" placeholder="새 비밀번호" disabled>
        <p class="alert"></p>
        <input class="modiIf-content modiIf-rePw pw" id='rePw' type="password" placeholder="새 비밀번호 재입력" disabled>
        <p class="alert"></p>
       
        <div class="bt">
          <input class='modiIf-bt submit-bt' type="submit" value="회원정보 수정">
          <input class='modiIf-bt cancle-bt' type="button" onclick="location.href='./mypage.jsp'" value="뒤로가기">
        </div>
        <p class="completedMessage alert"></p>
      </form>
    </div>
  </div>
</body>
</html>
