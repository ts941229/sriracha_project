<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.css">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<header class="menu-box">
        <div class="menu">
            <div class="menu_left">
                <a href="/sriracha/get_main_page.do"><img class="menu_logo" src="../img/logo.png"
                        style="max-width:200px; width:100%; height:auto;" /></a>
                
            </div>
            <div class="menu_right">
                <div class="menu_search-box">
                    <i class="fas fa-search"></i>
                    <form action="/sriracha/search.do" id="searchForm">
                       <input class="menu_search" type="text" placeholder="영화 제목 키워드를 검색해보세요." name="search_content" onkeyup="searchEnter()">
                    </form>
                </div>
                <span class="menu_login" id="logoutBtn" style="cursor: pointer;">로그아웃 </span>
                <span class="menu_sign-up" id="js-signUp" onclick="location.href='/sriracha/get_my_page.do'"
                    style="cursor: pointer;">마이페이지</span>
            </div>
            
            <div class="overlay"></div>
        </div>
    </header>
    
    <div class="forheader" style="margin-top: 65px"></div>
</body>

<script>

//    let searchForm = document.getElementById("searchForm");
   
//    function doLogout(){
//       if(confirm("로그아웃 하시겠습니까?\n(로그인 페이지로 이동합니다)")){
//          location.href="/sriracha/logout.do";
//       }
//    }
   
//    function searchEnter(){
//       if(window.event.keyCode == 13){
//          searchForm.submit();
//       }
//    }
   
// 로그아웃 컨펌창  
   $().ready(function () {
               $("#logoutBtn").click(function () {
                   Swal.fire({
                       title: '알림 <br> ',
                       html: "로그아웃 하시겠어요? ",
//                       icon: 'warning',
                       showCancelButton: true,
//                        confirmButtonColor: 'white',
//                       cancelButtonColor: '#d33',
                       confirmButtonText: '확인',
                       cancelButtonText: '취소',
                       customClass: 'swal-wide'
                   }).then((result) => {
                       if (result.isConfirmed) {
                    	   location.href="/sriracha/logout.do";
                       }
                       else{
   							window.location.reload();
   					}
                   })
               });
           });
   
   
   
</script>

</html>