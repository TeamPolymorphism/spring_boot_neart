<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>MYPAGE_EDIT</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link  rel="stylesheet" type="text/css" href="css/signin.css">

    <!-- password eye form -->
    <link rel="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">

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
<body >

  <!-- Header -->
	<header class="header-v3" style="background-color: black;">
		<!-- Header desktop -->
		<div class="container-menu-desktop trans-03">
			<div class="wrap-menu-desktop">
				<nav class="limiter-menu-desktop p-l-45">
					
					<!-- Logo desktop -->		
					<a href="home-03.html" class="logo">
						<img src="neart-source/logo/logo_w.png" alt="IMG-LOGO">
					</a>

					<!-- Menu desktop -->
					<div class="menu-desktop">
						<ul class="main-menu">
							<li>
								<a href="product.html">ART-PRODUCT</a>
								<!-- <ul class="sub-menu">
									<li><a href="index.html">frame</a></li>
									<li><a href="home-02.html"></a></li>
									<li><a href="home-03.html"></a></li>
								</ul> -->
							</li>

							<li class="label1">
								<a href="subscription-detail.html">SUBSCRIPTION (구독)</a>
							</li>

							<li>
								<a href="artist.html">ARTIST</a>
							</li>
						</ul>
						<ul class="main-menu">
							<li>
								<a href="about.html">ABOUT</a>
							</li>
						</ul>
					</div>	

					<!-- Icon header -->
					<div class="wrap-icon-header flex-w flex-r-m h-full">	
						<div class="flex-c-m h-full bor6">
							<div class="icon-header-item cl0 hov-cl1 trans-04 p-lr-11 icon-header-noti2 js-show-join">
								<i class=""><svg xmlns="http://www.w3.org/2000/svg" aria-hidden="true" role="img" width="1em" height="1em" 
									preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24"><path fill="currentColor" d="M4 15h2v5h12V4H6v5H4V3a1 1 0 0 1 
									1-1h14a1 1 0 0 1 1 1v18a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1v-6zm6-4V8l5 4l-5 4v-3H2v-2h8z"/></svg></i>
							</div>
						</div>
						
						<div class="flex-c-m h-full  bor6">
							<div class="icon-header-item cl0 hov-cl1 trans-04 p-lr-11 icon-header-noti2 js-show-join">
								<i class=""><svg xmlns="http://www.w3.org/2000/svg" aria-hidden="true" role="img" width="0.97em" height="1em" 
									preserveAspectRatio="xMidYMid meet" viewBox="0 0 496 512"><path fill="currentColor" d="M248 8C111 8 0 119 0 
									256s111 248 248 248s248-111 248-248S385 8 248 8zm0 448c-110.3 0-200-89.7-200-200S137.7 56 248 56s200 89.7 
									200 200s-89.7 200-200 200zm-80-216c17.7 0 32-14.3 32-32s-14.3-32-32-32s-32 14.3-32 32s14.3 32 32 32zm160 0c17.7 
									0 32-14.3 32-32s-14.3-32-32-32s-32 14.3-32 32s14.3 32 32 32zm4 72.6c-20.8 25-51.5 39.4-84 
									39.4s-63.2-14.3-84-39.4c-8.5-10.2-23.7-11.5-33.8-3.1c-10.2 8.5-11.5 23.6-3.1 33.8c30 36 74.1 56.6 120.9 
									56.6s90.9-20.6 120.9-56.6c8.5-10.2 7.1-25.3-3.1-33.8c-10.1-8.4-25.3-7.1-33.8 3.1z"/></svg></i>
							</div>
						</div>

						<div class="flex-c-m h-full p-r-10 bor6">
							<div class="icon-header-item cl0 hov-cl1 trans-04 p-lr-11 icon-header-noti js-show-cart" data-notify="2">
								<i class="zmdi zmdi-shopping-cart"></i>
							</div>
						</div>
							
						<div class="flex-c-m h-full p-lr-19">
							<div class="icon-header-item cl0 hov-cl1 trans-04 p-lr-11 js-show-sidebar">
								<i class="zmdi zmdi-menu"></i>
							</div>
						</div>
					</div>
				</nav>
			</div>	
		</div>

		<!-- Header Mobile -->
		<div class="wrap-header-mobile">
			<!-- Logo moblie -->		
			<div class="logo-mobile">
				<a href="home-03.html"><img src="neart-source/logo/logo_b.png" alt="IMG-LOGO"></a>
			</div>

			<!-- Icon header -->
			<div class="wrap-icon-header flex-w flex-r-m h-full m-r-15">
				<div class="icon-header-item cl2 hov-cl1 trans-04 p-lr-11 icon-header-noti2 js-show-join">
					<i class=""><svg xmlns="http://www.w3.org/2000/svg" aria-hidden="true" role="img" width="1em" height="1em" 
						preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24"><path fill="currentColor" d="M4 15h2v5h12V4H6v5H4V3a1 1 0 0 1 
						1-1h14a1 1 0 0 1 1 1v18a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1v-6zm6-4V8l5 4l-5 4v-3H2v-2h8z"/></svg></i>
				</div>
			</div>
			<div class="wrap-icon-header flex-w flex-r-m h-full m-r-15">
				<div class="icon-header-item cl2 hov-cl1 trans-04 p-lr-11 icon-header-noti2 js-show-join">
					<i class=""><svg xmlns="http://www.w3.org/2000/svg" aria-hidden="true" role="img" width="0.97em" height="1em" 
						preserveAspectRatio="xMidYMid meet" viewBox="0 0 496 512"><path fill="currentColor" d="M248 8C111 8 0 119 0 
						256s111 248 248 248s248-111 248-248S385 8 248 8zm0 448c-110.3 0-200-89.7-200-200S137.7 56 248 56s200 89.7 
						200 200s-89.7 200-200 200zm-80-216c17.7 0 32-14.3 32-32s-14.3-32-32-32s-32 14.3-32 32s14.3 32 32 32zm160 0c17.7 
						0 32-14.3 32-32s-14.3-32-32-32s-32 14.3-32 32s14.3 32 32 32zm4 72.6c-20.8 25-51.5 39.4-84 
						39.4s-63.2-14.3-84-39.4c-8.5-10.2-23.7-11.5-33.8-3.1c-10.2 8.5-11.5 23.6-3.1 33.8c30 36 74.1 56.6 120.9 
						56.6s90.9-20.6 120.9-56.6c8.5-10.2 7.1-25.3-3.1-33.8c-10.1-8.4-25.3-7.1-33.8 3.1z"/></svg></i>
				</div>
			</div>

			<div class="wrap-icon-header flex-w flex-r-m h-full m-r-15">
				<div class="flex-c-m h-full p-r-5">
					<div class="icon-header-item cl2 hov-cl1 trans-04 p-lr-11 icon-header-noti js-show-cart" data-notify="2">
						<i class="zmdi zmdi-shopping-cart"></i>
					</div>
				</div>
			</div>

			<!-- Button show menu -->
			<div class="btn-show-menu-mobile hamburger hamburger--squeeze">
				<span class="hamburger-box">
					<span class="hamburger-inner"></span>
				</span>
			</div>
		</div>


		<!-- Menu Mobile -->
		<div class="menu-mobile">
			<ul class="main-menu-m">
				<li>
					<a href="product.html">ART-PRODUCT</a>
					<!-- <ul class="sub-menu-m">
									<li><a href="index.html">frame</a></li>
									<li><a href="home-02.html"></a></li>
									<li><a href="home-03.html"></a></li>
								</ul> -->
					<span class="arrow-main-menu-m">
						<i class="fa fa-angle-right" aria-hidden="true"></i>
					</span>
				</li>

				<li>
					<a href="subscription-detail.html">SUBSCRIPTION 구독</a>
				</li>

				<li>
					<a href="artist.html" class="label1 rs1" data-label1="hot">ARTIST</a>
				</li>

				<li>
					<a href="about.html">ABOUT</a>
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


<main>
  <div class="py-5 text-center">
    <h2>회원정보수정</h2>
  </div>

  <div class="card-container">
      <div class="row">
        <div class="signin-md-1">
          <form:form action="${pageContext.request.contextPath}/update" method="post">
            <div class="form-group has-feedback">
                <label class="control-label" for="id">아이디</label>
                <input class="form-control" type="text" name="id" value="${update_view.id}"/>
                <!-- <span id="overlapErr" class="help-block">사용할 수 없는 아이디 입니다.</span> -->
                <span class="glyphicon glyphicon-ok form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <label class="control-label" for="password">비밀번호</label>
                <button class="btn btn-light btn-block" type="submit">비밀번호 수정</button>
            </div>

            <div class="mb-3">
              <label for="name">이름</label>
              <input type="text" class="form-control" name="name" value="${update_view.name}" required>
              <div class="invalid-feedback">
              </div>
            </div>
            
            <div class="row">
              <div class="col-md-3 mb-3">
                <label for="country">생년월일</label>
                <input type="text" class="form-control" name="year" value="${update_view.year}" required>
                <!-- <select class="custom-select d-block w-100" id="year" required>
                  <option value="">선택</option>
                  <option>010</option>
                  <option>011</option>
                  <option>012</option>
                </select> -->
                <div class="invalid-feedback">
                </div>
              </div>
              <div class="col-md-2 mb-3">
                <label for="state">월</label>
                <input type="text" class="form-control" name="month" value="${update_view.month}" required>
                <div class="invalid-feedback">
                </div>
              </div>
              <div class="col-md-2 mb-3">
                <label for="zip">일</label>
                <input type="text" class="form-control" placeholder="" name="day" value="${update_view.day}" required>
                <div class="invalid-feedback">
                </div>
              </div>
            </div>
            <div class="mb-3">
              <label for="address">전화번호</label>
              <input type="text" class="form-control" placeholder="010부터 입력하세요." name="phonenum" value="${update_view.phonenum}" required>
              <div class="invalid-feedback">
              </div>
            </div>
            <div class="mb-3">
              <label for="address">주소</label>
              <input type="text" class="form-control" name="address" value="${update_view.address}" required>
              <div class="invalid-feedback">
              </div>
            </div>
            <hr class="mb-4"> 
            <button class="btn btn-block btn-warning" type="submit" style="color: white;">회원 정보 수정 확인</button>
          </form:form>
         <p class="mb-1 mt-3" style="text-decoration: underline">
			<a href="${pageContext.request.contextPath}/delete?id=<sec:authentication property="principal.user.id" />"style="color: black">회원탈퇴</a>
		</p>
        </div>
      </div>
  </div>
  	
  
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
            <a href="#" class="stext-107 cl7 hov-cl1 trans-04">
              정기 구독
            </a>
          </li>

          <li class="p-b-10">
            <a href="#" class="stext-107 cl7 hov-cl1 trans-04">
              아트 포스터
            </a>
          </li>

          <li class="p-b-10">
            <a href="#" class="stext-107 cl7 hov-cl1 trans-04">
              작가
            </a>
          </li>

          <li class="p-b-10">
            <a href="#" class="stext-107 cl7 hov-cl1 trans-04">
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
            <a href="#" class="stext-107 cl7 hov-cl1 trans-04">
              공지사항
            </a>
          </li>

          <li class="p-b-10">
            <a href="#" class="stext-107 cl7 hov-cl1 trans-04">
              문의게시판 
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
          <a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
            <i class="fa fa-facebook"></i>
          </a>

          <a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
            <i class="fa fa-instagram"></i>
          </a>

          <a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
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

          <div class="p-t-18">
            <button class="flex-c-m stext-101 cl0 size-103 bg1 bor1 hov-btn2 p-lr-15 trans-04">
              Subscribe
            </button>
          </div>
        </form>
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
