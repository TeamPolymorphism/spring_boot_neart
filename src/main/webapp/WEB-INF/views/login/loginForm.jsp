<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal" />
</sec:authorize>
<!DOCTYPE html>
<html lang="kor">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

    <title>LOGIN_NEART</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link  rel="stylesheet" type="text/css" href="css/signin.css">
    <link  rel="stylesheet" type="text/css" href="css/login.css">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.png"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/linearicons-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/slick/slick.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/MagnificPopup/magnific-popup.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
<!--===============================================================================================-->

  </head>

  <body class="login">

    <!-- Header -->
	<header class="header-v3" style="background-color: black;">
		<!-- Header desktop -->
		<div class="container-menu-desktop trans-03">
			<div class="wrap-menu-desktop">
				<nav class="limiter-menu-desktop p-l-45">
					
					<!-- Logo desktop -->		
					<a href="/" class="logo">
						<img src="neart-source/logo/logo_w.png" alt="IMG-LOGO">
					</a>

					<!-- Menu desktop -->
					<div class="menu-desktop">
						<ul class="main-menu">
							<li>
								<a href="/listProduct">ART-PRODUCT</a>
							</li>

							<li class="label1">
								<a href="/subscription">SUBSCRIPTION (구독)</a>
							</li>

							<li>
								<a href="/artist">ARTIST</a>
							</li>
						</ul>
						<ul class="main-menu">
							<li>
								<a href="/about">ABOUT</a>
							</li>
						</ul>
					</div>	

					<!-- Icon header 반응형 클 때-->
					</nav>		
				</div>
			</div>	


		<!-- Header Mobile 반응형 작아질 때 -->
		<div class="wrap-header-mobile">
			<!-- Logo moblie -->		
			<div class="logo-mobile">
				<a href="/"><img src="neart-source/logo/logo_b.png" alt="IMG-LOGO"></a>
			</div>



		<!-- Menu Mobile -->
		<div class="menu-mobile">
			<ul class="main-menu-m">
				<li>
					<a href="/listProduct">ART-PRODUCT</a>
				</li>
				<li>
					<a href="/subscription">SUBSCRIPTION 구독</a>
				</li>
				<li>
					<a href="/artist" class="label1 rs1" data-label1="hot">ARTIST</a>
				</li>
				<li>
					<a href="/about">ABOUT</a>
				</li>
			</ul>
		</div>
		

		<!-- Modal Search -->
		<div class="modal-search-header flex-c-m trans-04 js-hide-modal-search">
			<button class="flex-c-m btn-hide-modal-search trans-04">
				<i class="zmdi zmdi-close"></i>
			</button>

			<form class="container-search-header">
				<div class="wrap-search-header">
					<input class="plh0" type="text" name="search" placeholder="Search...">

					<button class="flex-c-m trans-04">
						<i class="zmdi zmdi-search"></i>
					</button>
				</div>
			</form>
		</div>
	</header>

  <main class="text-center">
		 
	<c:url value="/login" var="loginUrl" />
	    <form:form class="form-signin" name="f" action="${loginUrl}" method="POST">

		      <h1 class="h1 mb-3 font-weight-normal">로그인</h1>
		      <label for="inputid" class="sr-only">아이디</label>
		      <input type="id" id="id" class="form-control" name="username" placeholder="아이디" required autofocus>
		      <label for="inputPassword" class="sr-only">패스워드</label>
		      <input type="password" id="password" name="password" class="form-control" placeholder="패스워드" required>
		      <div class="checkbox mb-3">
		        <label>
		        </label>
		      </div>
		      <button class="btn btn-lg btn-block" type="submit" style="color: white;">Login</button>
	     
      <div class="d-flex justify-content-between" style="padding: 20px 0px;">
      <a href="/addFormAdmin" style="color: black;">관리자 회원가입</a>
      <a class="justify-content-end" href="/addForm" style="color: black;">회원가입</a>
      </div>
      <p style="font-size: 20px;">SNS로 로그인하기</p>
		
      <div class="d-flex justify-content-center">
      <a href="/oauth2/authorization/kakao">
        <svg id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 100" width="50" height="60" style="margin: 10px;"><defs><style>.cls-1{fill:#fae300;}.cls-2{fill:#391b1b;}</style></defs><circle class="cls-1" cx="50" cy="50" r="50"/><path class="cls-2" d="M50,31.38c-13.6,0-24.6,8.74-24.59,19.49,0,7,4.69,13.12,11.7,16.54-.52,1.92-1.86,7-2.13,8-.33,1.34.49,1.32,1,1s6.74-4.59,9.47-6.45a29.67,29.67,0,0,0,4.56.33c13.6,0,24.6-8.74,24.59-19.48S63.57,31.37,50,31.38" transform="translate(0 0)"/></svg>
      </a>
      <a href="/oauth2/authorization/naver" >
        <img class="naver" src="images/naver.png" alt="" width="50" height="50" style="margin: 15px;">
      </a>
      <a href="/oauth2/authorization/google" >
        <img class="google" src="images/google01.png" alt="" width="55" height="55" style="margin: 13px 6px;">
      </a>
      </div>
      <p class="mt-5 mb-3 text-muted">&copy; 2020-2022</p>
    </form:form>
  </main>




<!-- Footer -->
<footer class="bg3 p-t-75 p-b-32">
  <div class="container">
    <div class="row">
      <div class="col-sm-6 col-lg-3 p-b-50">
        <h4 class="stext-301 cl0 p-b-30">
          카테고리
        </h4>

        <ul>
          <li class="p-b-10">
            <a href="/subscription" class="stext-107 cl7 hov-cl1 trans-04">
              정기 구독
            </a>
          </li>

          <li class="p-b-10">
            <a href="/listProduct" class="stext-107 cl7 hov-cl1 trans-04">
              아트 포스터
            </a>
          </li>

          <li class="p-b-10">
            <a href="/artist" class="stext-107 cl7 hov-cl1 trans-04">
              작가
            </a>
          </li>

          <li class="p-b-10">
            <a href="/about" class="stext-107 cl7 hov-cl1 trans-04">
              니아트 소개
            </a>
          </li>
        </ul>
      </div>

      <div class="col-sm-6 col-lg-3 p-b-50">
        <h4 class="stext-301 cl0 p-b-30">
          게시판
        </h4>

        <ul>
          <li class="p-b-10">
            <a href="/nlist" class="stext-107 cl7 hov-cl1 trans-04">
              공지사항
            </a>
          </li>

          <li class="p-b-10">
            <a href="/qlist" class="stext-107 cl7 hov-cl1 trans-04">
              Q&A게시판 
            </a>
          </li>

          <li class="p-b-10">
            <a href="#" class="stext-107 cl7 hov-cl1 trans-04">
              리뷰게시판
            </a>
          </li>

        </ul>
      </div>

      <div class="col-sm-6 col-lg-3 p-b-50">
        <h4 class="stext-301 cl0 p-b-30">
          브랜드
        </h4>

        <p class="stext-107 cl7 size-201">
          상호 : 주식회사 니아트 <br>
          대표 : 폴리모피즘 <br>
          주소 : 서울특별시 금천구 가산동 426-5 월드 메르디앙 벤처 센터 2차 312호 <br>
          통신판매업신고번호 : 2022-서울금천구-2호 <br>
          사업자등록정보 : 012-34-5678
        </p>

        <div class="p-t-27">
          <a href="https://ko-kr.facebook.com/" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
            <i class="fa fa-facebook"></i>
          </a>

          <a href="https://www.instagram.com/?hl=ko" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
            <i class="fa fa-instagram"></i>
          </a>

          <a href="https://www.pinterest.co.kr/" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
            <i class="fa fa-pinterest-p"></i>
          </a>
        </div>
      </div>

      <div class="col-sm-6 col-lg-3 p-b-50">
        <h4 class="stext-301 cl0 p-b-30">
          contect
        </h4>

       				<form>
						<div class="wrap-input1 w-full p-b-4">
							<input class="input1 bg-none plh1 stext-107 cl7" type="text" name="email" placeholder="email@example.com">
							<div class="focus-input1 trans-04"></div>
						</div>
					</form>
						<div class="p-t-18">
							<button class="flex-c-m stext-101 cl0 size-103 bg1 bor1 hov-btn2 p-lr-15 trans-04"
									onclick = "location.href = 'subscription'">
								Subscribe
							</button>
						</div>
      </div>
    </div>

    <div class="p-t-40">
      <div class="flex-c-m flex-w p-b-18">
        <a href="#" class="m-all-1">
          <img src="images/icons/icon-pay-01.png" alt="ICON-PAY">
        </a>

        <a href="#" class="m-all-1">
          <img src="images/icons/icon-pay-02.png" alt="ICON-PAY">
        </a>

        <a href="#" class="m-all-1">
          <img src="images/icons/icon-pay-03.png" alt="ICON-PAY">
        </a>

        <a href="#" class="m-all-1">
          <img src="images/icons/icon-pay-04.png" alt="ICON-PAY">
        </a>

        <a href="#" class="m-all-1">
          <img src="images/icons/icon-pay-05.png" alt="ICON-PAY">
        </a>
      </div>

      <p class="stext-107 cl6 txt-center">
        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
NEART &copy;<script>document.write(new Date().getFullYear());</script> ALL RIGHTS RESERVED.
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->

      </p>
    </div>
  </div>
</footer>


<!-- Back to top -->
<div class="btn-back-to-top" id="myBtn">
  <span class="symbol-btn-back-to-top">
    <i class="zmdi zmdi-chevron-up"></i>
  </span>
</div>




  </body>
</html>
