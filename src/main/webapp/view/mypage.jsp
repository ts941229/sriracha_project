<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="../css/mypage.css" />
    <link rel="stylesheet" href="../css/style.css">

    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css"
        integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc" crossorigin="anonymous">

 
    <link
      rel="stylesheet"
      href="https://use.fontawesome.com/releases/v5.15.3/css/all.css"
      integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk"
      crossorigin="anonymous"
    />
    <title>스리라차 피디아</title>

  </head>
  <body>
    <!-- 네비게이션바 -->
    <header class="menu-box">
      <div class="menu">
          <div class="menu_left">
              <a href="main.jsp"><img class="menu_logo" src="../img/logo.png" style="max-width:200px; width:100%; height:auto;"/></a>
              <span class="menu_movie">영화</span>
              <span class="menu_tv">TV 프로그램</span>
              <span class="menu_book">책</span>
          </div>
          <div class="menu_right">
              <div class="menu_search-box">
                  <i class="fas fa-search"></i>
                  <input class="menu_search" type="text" placeholder="작품 제목,배우,감독을 검색해보세요.">
              </div>
              <span class="menu_login" onclick="location.href='./login.jsp'" style="cursor: pointer;">로그아웃 </span>
              <span class="menu_sign-up" id="js-signUp" onclick="location.href='./main.jsp'" style="cursor: pointer;">메인페이지</span>
          </div>
          
          <div class="overlay"></div>
      </div>
  </header>

    <!-- 상세페이지 & footer -->
    <div id="middle_buttom">
      <section class="explanation">
        <div class="explanation__border">
          <div class="top_page" style="background-image: im;">
            <div class="pageBox">
              <button onclick="location.href='./modiIf.jsp'"><i class="fas fa-cog"></i></button>
            </div>
          </div>
          <div id="middleLike">
            <section class="middle">
              <div class="introduction">
                <ul class="introduction_items">
                  <li><i class="fas fa-user-circle"></i></li>
                  <li>
                    <h1>강태석
                    <!-- <span src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTIiIGhlaWdodD0iMTIiIHZpZXdCb3g9IjAgMCAxMiAxMiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICA8cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTQuNzcwNDYgMC41NjI0NTlDNS4yNDMyOCAtMC4xNTY0MzIgNi4zMTE0NyAtMC4xOTMwNyA2LjgzNTM1IDAuNDkyMTU1QzcuMTczMzcgMC45MzM3ODggNy43NzM4NSAxLjEwMTEzIDguMzAxODEgMC45MDAxMjFDOS4xMTk4IDAuNTg4MjA1IDEwLjAwNjIgMS4xNjc0OCAxMC4wMTQ0IDIuMDIxMDRDMTAuMDE5NSAyLjU2OTYxIDEwLjQwNTUgMy4wNDc4OCAxMC45NTM5IDMuMTg1NTJDMTEuODA0NiAzLjM5OTQxIDEyLjE3MDIgNC4zNzQ3NiAxMS42NjA2IDUuMDY4OUMxMS4zMzE4IDUuNTE2NDggMTEuMzUzMiA2LjEyMTQ5IDExLjcxMzcgNi41NDYyOUMxMi4yNzIzIDcuMjA0NzggMTEuOTc3MiA4LjIwMTkyIDExLjE0MzggOC40NzIyNUMxMC42MDY3IDguNjQ3NTIgMTAuMjU3NCA5LjE1MDU0IDEwLjI5MTEgOS42OTkxMkMxMC4zNDQyIDEwLjU0OTcgOS41MDE3NCAxMS4xODc0IDguNjYzMzIgMTAuOTMxOUM4LjEyMjA4IDEwLjc2NzYgNy41MzQ4OCAxMC45NzQ1IDcuMjI5NTQgMTEuNDM3OUM2Ljc1NjcyIDEyLjE1NjggNS42ODc1MSAxMi4xOTI1IDUuMTY0NjUgMTEuNTA4MkM0LjgyNjYzIDExLjA2NTYgNC4yMjYxNSAxMC44OTgzIDMuNjk4MTkgMTEuMTAwM0MyLjg4MDIgMTEuNDEyMiAxLjk5Mzc4IDEwLjgzMTkgMS45ODQ1OSA5Ljk4MDM0QzEuOTgwNTEgOS40Mjk3OCAxLjU5NTUxIDguOTUyNSAxLjA0NjEgOC44MTM4N0MwLjE5NTQyOCA4LjU5OTk5IC0wLjE3MDE2NiA3LjYyNjYxIDAuMzM5NDE5IDYuOTMyNDdDMC42NjgyNDkgNi40ODM5MSAwLjY0NjgwNCA1Ljg3NzkgMC4yODYzMTYgNS40NTMxQy0wLjI3MjI4NyA0Ljc5NDYxIDAuMDIyODQzIDMuNzk5NDUgMC44NTYxNTIgMy41MjcxNUMxLjM5MzMxIDMuMzUyODcgMS43NDM1OSAyLjg1MDgzIDEuNzA4ODYgMi4zMDEyN0MxLjY1NTc2IDEuNDUwNjggMi40OTgyNiAwLjgxMTk5MiAzLjMzNjY4IDEuMDY4NDZDMy44Nzc5MiAxLjIzMjgzIDQuNDY1MTIgMS4wMjU4OCA0Ljc3MDQ2IDAuNTYyNDU5WiIgZmlsbD0iIzBFMEYxMCIvPgogIDxwYXRoIGQ9Ik03LjY5NzMzIDIuNDUwMkw3LjI4NjEyIDcuNzkzOTJMNy4xNzc3NCA3Ljc5ODI4TDYuNDUyMjYgMy45Nzk3NUg1LjI2MTIzTDQuNjY1NTggNy44OTE1N0w0LjUzNTc1IDcuODk2OEwzLjk1MDk2IDMuOTc5NzVIMi41TDMuODEwMjcgOS43MTU4Mkw1LjMxNTI4IDkuNjE0MzlMNS44NDU3NCA1Ljk3MTdINS45NjQ5OEw2LjU2MDM1IDkuNTMwMTFMOC4wNzY1MSA5LjQyNzIzTDkuMTA1MTEgMi40NTAySDcuNjk3MzNaIiBmaWxsPSIjRkYwNTU4Ii8+Cjwvc3ZnPgo=" class="css-1rvu9sa-Badge e19zkogf8"></span> -->
                    </h1>
                  </li>
                  <li class="profile__no">프로필이 없습니다.</li>
                </ul>
              </div>

              <div class="preference">
                <a href="#"  style="text-decoration: none;" title="취향분석">
                    <span class="chart"></span>
                    <span style="color: black;">취향분석</span>
                </a>
              </div>
            </section>
            <section id="like">
              <div class="like">
                <ul class="like__items">
                  <li class="item__movie">
                    <a href="#">
                      <ul>
                        <li><span style="color: white; font-weight: bold;">영화</span></li>
                        <li>⭐0</li>
                        <li class="third" style="color: white; font-weight: bold;">보고싶어요</li>
                      </ul>
                    </a>
                  </li>
                  <li class="item__tv">
                    <a href="#"
                      ><ul>
                        <li><span style="color: white; font-weight: bold;">TV프로그램</span></li>
                        <li>⭐0</li>
                        <li class="third" style="color: white; font-weight: bold;">보고싶어요</li>
                      </ul></a
                    >
                  </li>
                  <li class="item__book">
                    <a href="#"
                      ><ul>
                        <li><span style="color: white; font-weight: bold;">책</span></li>
                        <li>⭐0</li>
                        <li class="third" style="color: white; font-weight: bold;">보고싶어요</li>
                      </ul></a
                    >
                  </li>
                </ul>
              </div>
            </section>
          </div>
        </div>
      </section>

      <footer>
        <div class="small-box ">
            <span class="review">
                지금까지&nbsp;
            </span>
            <span class="review review-red">
                ★ 562,339,084 개의 평가가&nbsp;
            </span>
            <span class="review">
                쌓였어요.
            </span>
        </div>
        <div class="big-box">
            <div class="first-column column">
                <span class="footer_info cursor">
                    서비스 이용약관 &nbsp;|&nbsp; 개인정보 처리방침 &nbsp;|&nbsp; 회사 안내
                </span>
            </div>
            <div class="second-column column">
                <span class="footer_info cursor">
                    고객센터 &nbsp;|&nbsp; cs@srirachapedia.co.kr
                </span>
                <span class="footer_info cursor">
                    제휴 및 대외 협력 &nbsp;|&nbsp; contact@sriracha.com, 070-1234-5678
                </span>
            </div>
            <div class="third-column column">
                <span class="footer_info">
                    주식회사 스리라차 &nbsp;|&nbsp; 대표 강태석 &nbsp;|&nbsp; 서울특별시 역삼동 코리아IT 아카데미
                </span>
                <span class="footer_info">
                    사업자 등록 번호 123-45-78910
                </span>
                <div class="footer_info">
                    <img src="../img/logo2.png" style="max-width:200px; width:100%; height:auto;" class="footer_logo">
                    <span class="footer_info">© 2022 sriracha. Inc</span>
                </div>
            </div>
        </div>
    </footer>
    
      <footer class="responsive_foot">
        <nav>
          <ul class="foot__items">
            <li>
              <a href="#">
                <div><i class="fas fa-home"></i></div>
                <div style="font-size: 11.5px; text-align: center">홈</div>
              </a>
            </li>
            <li>
              <a href="#">
                <div><i class="fas fa-search"></i></div>
                <div style="font-size: 11.5px">검색</div>
              </a>
            </li>
            <li>
              <a href="#">
                <div><i class="fas fa-star"></i></div>
                <div style="font-size: 11.5px">평가</div>
              </a>
            </li>
            <li>
              <a href="#">
                <div style="text-align: center">
                  <i class="fas fa-user"></i>
                </div>
                <div style="font-size: 11.5px">나의 스리라차</div>
              </a>
            </li>
          </ul>
        </nav>
      </footer>
    </div>
  </body>
</html>
