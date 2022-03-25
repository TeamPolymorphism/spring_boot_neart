<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!doctype html>
<html lang="ko">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

        <title>WITHDRAW</title>

        <!-- Bootstrap core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link rel="stylesheet" type="text/css" href="css/signin.css">
        <link rel="stylesheet" type="text/css" href="css/mypage.css">

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
                        <div class="wrap-icon-header flex-w flex-r-m h-full">
                        	<a href="${pageContext.request.contextPath}/logout" method="POST">
                            <div class="flex-c-m h-full bor6">
                                <div class="icon-header-item cl0 hov-cl1 trans-04 p-lr-11 icon-header-noti2 js-show-join">
                                    <i class=""><svg xmlns="http://www.w3.org/2000/svg" aria-hidden="true" role="img" width="1em" height="1em"
                                    preserveaspectratio="xMidYMid meet" viewbox="0 0 24 24"><path fill="currentColor" d="M4 15h2v5h12V4H6v5H4V3a1 1 0 0 1
									1-1h14a1 1 0 0 1 1 1v18a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1v-6zm6-4V8l5 4l-5 4v-3H2v-2h8z"/></svg>
                                    </i>
                                </div>
                            </div>
						<a href="${pageContext.request.contextPath}/orderdetails?membernum=<sec:authentication property="principal.user.membernum" />">
							<div class="flex-c-m h-full  bor6">
                                <div class="icon-header-item cl0 hov-cl1 trans-04 p-lr-11 icon-header-noti2 js-show-join">
                                    <i class=""> <svg xmlns="http://www.w3.org/2000/svg" aria-hidden="true" role="img" width="0.97em" height="1em"
                                    preserveaspectratio="xMidYMid meet" viewbox="0 0 496 512"><path fill="currentColor" d="M248 8C111 8 0 119 0
									256s111 248 248 248s248-111 248-248S385 8 248 8zm0 448c-110.3 0-200-89.7-200-200S137.7 56 248 56s200 89.7
									200 200s-89.7 200-200 200zm-80-216c17.7 0 32-14.3 32-32s-14.3-32-32-32s-32 14.3-32 32s14.3 32 32 32zm160 0c17.7
									0 32-14.3 32-32s-14.3-32-32-32s-32 14.3-32 32s14.3 32 32 32zm4 72.6c-20.8 25-51.5 39.4-84
									39.4s-63.2-14.3-84-39.4c-8.5-10.2-23.7-11.5-33.8-3.1c-10.2 8.5-11.5 23.6-3.1 33.8c30 36 74.1 56.6 120.9
									56.6s90.9-20.6 120.9-56.6c8.5-10.2 7.1-25.3-3.1-33.8c-10.1-8.4-25.3-7.1-33.8 3.1z"/></svg></i>
                                </div>
                            </div>
						</a>
                            <div class="flex-c-m h-full p-r-10 bor6">
                                <div class="icon-header-item cl0 hov-cl1 trans-04 p-lr-11 js-show-cart">
                                    <i class="zmdi zmdi-shopping-cart"></i>
                                </div>
                            </div>
                            <!-- <div class="flex-c-m h-full p-lr-19">
                                <div class="icon-header-item cl0 hov-cl1 trans-04 p-lr-11 js-show-sidebar">
                                    <i class="zmdi zmdi-menu"></i>
                                </div>
                            </div> -->
                        </div>
                    </nav>
                </div>
            </div>

            <!-- Header Mobile 반응형 작아질 때 -->
            <div class="wrap-header-mobile">
                <!-- Logo moblie -->
                <div class="logo-mobile">
                    <a href="/"><img src="neart-source/logo/logo_b.png" alt="IMG-LOGO"></a>
                </div>

                <!-- Icon header -->
                <a href="${pageContext.request.contextPath}/logout" method="POST">
                <div class="wrap-icon-header flex-w flex-r-m h-full m-r-15">
                    <div class="icon-header-item cl2 hov-cl1 trans-04 p-lr-11 icon-header-noti2 js-show-join">
                        <i class=""><svg xmlns="http://www.w3.org/2000/svg" aria-hidden="true" role="img" width="1em" height="1em"
                        preserveaspectratio="xMidYMid meet" viewbox="0 0 24 24"><path fill="currentColor" d="M4 15h2v5h12V4H6v5H4V3a1 1 0 0 1
						1-1h14a1 1 0 0 1 1 1v18a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1v-6zm6-4V8l5 4l-5 4v-3H2v-2h8z"/></svg></i>
                    </div>
                </div>
                </a>
			<a href="${pageContext.request.contextPath}/orderdetails?membernum=<sec:authentication property="principal.user.membernum" />">
				<div class="wrap-icon-header flex-w flex-r-m h-full m-r-15">
                    <div class="icon-header-item cl2 hov-cl1 trans-04 p-lr-11 icon-header-noti2 js-show-join">
                        <i class=""><svg xmlns="http://www.w3.org/2000/svg" aria-hidden="true" role="img" width="0.97em" height="1em"
                        preserveaspectratio="xMidYMid meet" viewbox="0 0 496 512"><path fill="currentColor" d="M248 8C111 8 0 119 0
						256s111 248 248 248s248-111 248-248S385 8 248 8zm0 448c-110.3 0-200-89.7-200-200S137.7 56 248 56s200 89.7
						200 200s-89.7 200-200 200zm-80-216c17.7 0 32-14.3 32-32s-14.3-32-32-32s-32 14.3-32 32s14.3 32 32 32zm160 0c17.7
						0 32-14.3 32-32s-14.3-32-32-32s-32 14.3-32 32s14.3 32 32 32zm4 72.6c-20.8 25-51.5 39.4-84
						39.4s-63.2-14.3-84-39.4c-8.5-10.2-23.7-11.5-33.8-3.1c-10.2 8.5-11.5 23.6-3.1 33.8c30 36 74.1 56.6 120.9
						56.6s90.9-20.6 120.9-56.6c8.5-10.2 7.1-25.3-3.1-33.8c-10.1-8.4-25.3-7.1-33.8 3.1z"/></svg></i>
                    </div>
                </div>
				</a>
				
                <div class="wrap-icon-header flex-w flex-r-m h-full m-r-15">
                    <div class="flex-c-m h-full p-r-5">
                        <div
                            class="icon-header-item cl2 hov-cl1 trans-04 p-lr-11 js-show-cart">
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


        <main>
            <div class="container">
                <div class="row">

                    <!-- MYPAGE / li안에 li는 불가능 -->
                    <div class="col-md-4 order-md-1 mb-4" style="color: black;">
                        <h4 class="d-flex justify-content-between align-items-center mb-3">
                            <span >MYPAGE</span>
                            <!-- <span class="badge badge-secondary badge-pill">3</span> -->
                        </h4>
                        <hr class="mb-4" style="border: solid 2px black;">
                        <h4><sec:authentication property="principal.user.name"/> 님</h4>
                        <hr class="mb-3" style="border: solid 2px white;">
                        <ul class="list-group mb-4" style="padding: 5px;">
                            <div>
					            <h6 class="mb-2">나의 쇼핑정보</h6>
					            <div style="padding: 2px;">
								<a href="${pageContext.request.contextPath}/orderdetailslist?membernum=<sec:authentication property="principal.user.membernum" />" class="text-muted">주문조회</a>
								</div>
								<div style="margin: 2px;">
								<a href="${pageContext.request.contextPath}/ordercancel?membernum=<sec:authentication property="principal.user.membernum" />" class="text-muted">반품/교환/취소</a>
								</div>
				          	</div>
                            <hr class="mb-3" style="border: solid 2px white;">
                            <div>
                                <h6 class="mb-2">나의 참여내역</h6>
                                <div style="padding: 2px;">
                                    <a href="#" class="text-muted">1:1문의</a>
                                </div>
                                <div style="padding: 2px;">
                                    <a href="#" class="text-muted">Q & A</a>
                                </div>
                            </div>
                            <hr class="mb-3" style="border: solid 2px white;">
                            <div>
                                <h6 class="mb-2">나의 정보관리</h6>
                                <div style="padding: 2px;">
									<a href="${pageContext.request.contextPath}/update?id=<sec:authentication property="principal.user.id" />" class="text-muted">회원정보수정</a>
								</div>
                            </div>
                        </ul>
                    </div>

                    <!-- 반품/교환/취소 신청 -->
                    <div class="col-md-8 order-md-2" style="color: black;">
                        <div class="d-flex justify-content-between">
                        <h4 class="mb-0">회원탈퇴 유의사항</h4>
                        </div>
                        <hr class="mb-0" style="border: solid 2px black;">

                        <div class="mt-4 mb-4">
                            <h5 style="font-weight: bold;"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path fill-rule="evenodd" d="M9.126.64a1.75 1.75 0 011.75 0l8.25 4.762c.103.06.199.128.286.206a.748.748 0 01.554.96c.023.113.035.23.035.35v3.332a.75.75 0 01-1.5 0V7.64l-7.75 4.474V22.36a.75.75 0 01-1.125.65l-8.75-5.052a1.75 1.75 0 01-.875-1.515V6.917c0-.119.012-.236.035-.35a.748.748 0 01.554-.96 1.75 1.75 0 01.286-.205L9.126.639zM1.501 7.638v8.803c0 .09.048.172.125.216l7.625 4.402v-8.947l-7.75-4.474zm8.5 3.175L2.251 6.34l7.625-4.402a.25.25 0 01.25 0l7.625 4.402-7.75 4.474z"></path><path d="M21.347 17.5l-2.894-2.702a.75.75 0 111.023-1.096l4.286 4a.75.75 0 010 1.096l-4.286 4a.75.75 0 11-1.023-1.096L21.347 19h-6.633a.75.75 0 010-1.5h6.633z"></path></svg>
                                회원정보삭제</h5>
                            <p class="mt-1 mb-1">탈퇴 시 회원님의 NEART 이용정보가 삭제되며 복구가 불가능하오니 신중히 선택하시기 바랍니다.</p>
                            <p class="mt-1 mb-1">회원 탈퇴와 함께 NEART 에 등록된 모든 개인정보는 삭제, 폐기 처리되며 복구되지 않습니다.</p>
                            
                            <p class="mt-1 mb-1">회원탈퇴 시 동일 아이디(이메일)로 재가입하실 수 없습니다.</p>
                            <p class="mt-1 mb-1">단, 상법 및 '전자상거래 등에서 소비자 보호에 관한 법률' 등 관련 법령의 규정에 의하여 다음과 같이 ‘거래 관련 관리의무 관계 확인’ 등을 이유로 일정 기간 보관됩니다.</p>
                            
                            <hr class="mb-4">
                            <p class="mt-1 mb-1">정말 NEART를 탈퇴하시겠습니까?</p>
                            <hr class="mb-4">
                            <button type="button" class="btn btn-block btn-danger" onclick="showPopup();">회원 탈퇴</button>
                            
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
            <a href="/board/list" class="stext-107 cl7 hov-cl1 trans-04">
              공지사항
            </a>
          </li>

          <li class="p-b-10">
            <a href="/qnaboard/list" class="stext-107 cl7 hov-cl1 trans-04">
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
	
	<!-- 회원탈퇴 체크 팝업창 -->
	<script language="javascript">
		function showPopup() { window.open("/deletecheck", "a", "width=400, height=300, left=100, top=50"); }
	</script>

<!--===============================================================================================-->	
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/slick/slick.min.js"></script>
	<script src="js/slick-custom.js"></script>
<!--===============================================================================================-->
	<script src="vendor/isotope/isotope.pkgd.min.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>