<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>관리자 | 작품등록</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">


<meta name="description" content="">

<!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link rel="stylesheet" type="text/css" href="css/signin.css">
<link rel="stylesheet" type="text/css" href="css/mypage.css">

<!-- password eye form -->
<link
	rel="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="icon" type="image/png" href="images/icons/favicon.png" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="fonts/linearicons-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/slick/slick.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/MagnificPopup/magnific-popup.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="css/util.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body class="animsition">

	<!-- Header -->
	<header class="header-v4">
		<!-- Header desktop -->
		<div class="container-menu-desktop">
			<!-- Topbar -->
			<div class="top-bar">
				<div class="content-topbar flex-sb-m h-full container">
					<div class="left-top-bar">그림 정기구독으로 그림이 있는 일상을 NEART와 아트 컬렉팅을
						시작하세요.</div>

					<!-- ★★★★★★ ㅇㅇㅇ님 환영합니다 ★★★★★★ -->
					<!-- ★★★★★★ ㅇㅇㅇ님 환영합니다 ★★★★★★ -->
					<!-- ★★★★★★ ㅇㅇㅇ님 환영합니다 ★★★★★★ -->
					<sec:authorize access="isAnonymous()">
						<div class="flex-c-m h-full bor6">
							<a href="/login">
								<div
									class="icon-header-item cl0 hov-cl1 trans-04 p-lr-11 icon-header-noti2 js-show-join">
									<i class=""><svg xmlns="http://www.w3.org/2000/svg"
											aria-hidden="true" role="img" width="1em" height="1em"
											preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24">
											<path fill="currentColor"
												d="M4 15h2v5h12V4H6v5H4V3a1 1 0 0 1 
									1-1h14a1 1 0 0 1 1 1v18a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1v-6zm6-4V8l5 4l-5 4v-3H2v-2h8z" /></svg></i>
								</div>
							</a>
						</div>

					</sec:authorize>
					<sec:authorize access="isAuthenticated()">
						<div class="flex-c-m h-full bor6">
							<h6>
								<sec:authentication property="principal.user.name" />
								님 환영합니다.
							</h6>
							<a href="${pageContext.request.contextPath}/logout" method="POST">
								<div
									class="icon-header-item cl0 hov-cl1 trans-04 p-lr-11 icon-header-noti2 js-show-join">
									<i class=""><svg xmlns="http://www.w3.org/2000/svg"
											aria-hidden="true" role="img" width="1em" height="1em"
											preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24">
											<path fill="currentColor"
												d="M4 15h2v5h12V4H6v5H4V3a1 1 0 0 1 
										1-1h14a1 1 0 0 1 1 1v18a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1v-6zm6-4V8l5 4l-5 4v-3H2v-2h8z" /></svg></i>
								</div>
							</a>
						</div>
					</sec:authorize>


					<div class="right-top-bar flex-w h-full">
						<a href="#" class="flex-c-m trans-04 p-lr-25"> 공지게시판 </a> <a
							href="#" class="flex-c-m trans-04 p-lr-25"> Q&A게시판 </a>
					</div>
				</div>
			</div>

			<div class="wrap-menu-desktop how-shadow1">
				<nav class="limiter-menu-desktop container">

					<!-- Logo desktop -->
					<a href="/" class="logo"> <img
						src="neart-source/logo/logo_b.png" alt="IMG-LOGO">
					</a>

					<!-- Menu desktop -->
					<div class="menu-desktop">
						<ul class="main-menu">
							<li><a href="/listProduct">ART-PRODUCT</a> <!-- <ul class="sub-menu">
									<li><a href="index.html">frame</a></li>
									<li><a href="home-02.html"></a></li>
									<li><a href="home-03.html"></a></li>
								</ul> --></li>

							<li class="label1"><a href="subscription-detail.html">SUBSCRIPTION
									(구독)</a></li>

							<li><a href="artist.html">ARTIST</a></li>
						</ul>
						<ul class="main-menu">
							<li><a href="about.html">ABOUT</a></li>
						</ul>
					</div>
					<!-- Icon header -->

					<div class="wrap-icon-header flex-w flex-r-m">
						<div
							class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 js-show-modal-search">
							<i class="zmdi zmdi-search"></i>
						</div>

						<div class="flex-c-m h-full bor6">
							<a href="mypage.html">
								<div
									class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti2 js-show-join">
									<i class=""><svg xmlns="http://www.w3.org/2000/svg"
											aria-hidden="true" role="img" width="0.95em" height="1em"
											preserveAspectRatio="xMidYMid meet" viewBox="0 0 496 512">
											<path fill="currentColor"
												d="M248 8C111 8 0 119 0 
										256s111 248 248 248s248-111 248-248S385 8 248 8zm0 448c-110.3 0-200-89.7-200-200S137.7 56 248 56s200 89.7 
										200 200s-89.7 200-200 200zm-80-216c17.7 0 32-14.3 32-32s-14.3-32-32-32s-32 14.3-32 32s14.3 32 32 32zm160 0c17.7 
										0 32-14.3 32-32s-14.3-32-32-32s-32 14.3-32 32s14.3 32 32 32zm4 72.6c-20.8 25-51.5 39.4-84 
										39.4s-63.2-14.3-84-39.4c-8.5-10.2-23.7-11.5-33.8-3.1c-10.2 8.5-11.5 23.6-3.1 33.8c30 36 74.1 56.6 120.9 
										56.6s90.9-20.6 120.9-56.6c8.5-10.2 7.1-25.3-3.1-33.8c-10.1-8.4-25.3-7.1-33.8 3.1z" /></svg></i>
								</div>
							</a>
						</div>

						<div
							class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti js-show-cart"
							data-notify="2">
							<i class="zmdi zmdi-shopping-cart"></i>
						</div>

						<a href="#"
							class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti"
							data-notify="0"> <i class="zmdi zmdi-favorite-outline"></i>
						</a>
					</div>
				</nav>
			</div>
		</div>

		<!-- Header Mobile -->
		<div class="wrap-header-mobile">
			<!-- Logo moblie -->
			<div class="logo-mobile">
				<a href="home-03.html"><img src="neart-source/logo/logo_b.png"
					alt="IMG-LOGO"></a>
			</div>

			<!-- Icon header -->
			<div class="wrap-icon-header flex-w flex-r-m m-r-15">
				<div
					class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 js-show-modal-search">
					<i class="zmdi zmdi-search"></i>
				</div>

				<div class="flex-c-m h-full bor6">
					<a href="mypage.html">
						<div
							class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti2 js-show-join">
							<i class=""><svg xmlns="http://www.w3.org/2000/svg"
									aria-hidden="true" role="img" width="0.95em" height="1em"
									preserveAspectRatio="xMidYMid meet" viewBox="0 0 496 512">
									<path fill="currentColor"
										d="M248 8C111 8 0 119 0 
								256s111 248 248 248s248-111 248-248S385 8 248 8zm0 448c-110.3 0-200-89.7-200-200S137.7 56 248 56s200 89.7 
								200 200s-89.7 200-200 200zm-80-216c17.7 0 32-14.3 32-32s-14.3-32-32-32s-32 14.3-32 32s14.3 32 32 32zm160 0c17.7 
								0 32-14.3 32-32s-14.3-32-32-32s-32 14.3-32 32s14.3 32 32 32zm4 72.6c-20.8 25-51.5 39.4-84 
								39.4s-63.2-14.3-84-39.4c-8.5-10.2-23.7-11.5-33.8-3.1c-10.2 8.5-11.5 23.6-3.1 33.8c30 36 74.1 56.6 120.9 
								56.6s90.9-20.6 120.9-56.6c8.5-10.2 7.1-25.3-3.1-33.8c-10.1-8.4-25.3-7.1-33.8 3.1z" /></svg></i>
						</div>
					</a>
				</div>

				<div
					class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti js-show-cart"
					data-notify="2">
					<i class="zmdi zmdi-shopping-cart"></i>
				</div>

				<a href="#"
					class="dis-block icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti"
					data-notify="0"> <i class="zmdi zmdi-favorite-outline"></i>
				</a>
			</div>

			<!-- Button show menu -->
			<div class="btn-show-menu-mobile hamburger hamburger--squeeze">
				<span class="hamburger-box"> <span class="hamburger-inner"></span>
				</span>
			</div>
		</div>


		<!-- Menu Mobile -->
		<div class="menu-mobile">
			<ul class="topbar-mobile">
				<li>
					<div class="left-top-bar">그림 정기구독으로 그림이 있는 일상을 NEART와 아트 컬렉팅을
						시작하세요.</div>
				</li>


				<!-- ★★★★★★ ㅇㅇㅇ님 환영합니다 ★★★★★★ -->
				<!-- ★★★★★★ ㅇㅇㅇ님 환영합니다 ★★★★★★ -->
				<!-- ★★★★★★ ㅇㅇㅇ님 환영합니다 ★★★★★★ -->
				<li><sec:authorize access="isAnonymous()">
						<div class="flex-c-m h-full bor6">
							<a href="/login">
								<div
									class="icon-header-item cl0 hov-cl1 trans-04 p-lr-11 icon-header-noti2 js-show-join">
									<i class=""><svg xmlns="http://www.w3.org/2000/svg"
											aria-hidden="true" role="img" width="1em" height="1em"
											preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24">
											<path fill="currentColor"
												d="M4 15h2v5h12V4H6v5H4V3a1 1 0 0 1 
									1-1h14a1 1 0 0 1 1 1v18a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1v-6zm6-4V8l5 4l-5 4v-3H2v-2h8z" /></svg></i>
								</div>
							</a>
						</div>

					</sec:authorize> <sec:authorize access="isAuthenticated()">
						<div class="flex-c-m h-full bor6">
							<h6>
								<sec:authentication property="principal.user.name" />
								님 환영합니다.
							</h6>
							<a href="${pageContext.request.contextPath}/logout" method="POST">
								<div
									class="icon-header-item cl0 hov-cl1 trans-04 p-lr-11 icon-header-noti2 js-show-join">
									<i class=""><svg xmlns="http://www.w3.org/2000/svg"
											aria-hidden="true" role="img" width="1em" height="1em"
											preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24">
											<path fill="currentColor"
												d="M4 15h2v5h12V4H6v5H4V3a1 1 0 0 1 
										1-1h14a1 1 0 0 1 1 1v18a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1v-6zm6-4V8l5 4l-5 4v-3H2v-2h8z" /></svg></i>
								</div>
							</a>
						</div>
					</sec:authorize></li>
				<li>
					<div class="right-top-bar flex-w h-full">
						<a href="#" class="flex-c-m p-lr-10 trans-04"> 공지게시판 </a> <a
							href="#" class="flex-c-m p-lr-10 trans-04"> Q&A게시판 </a>
					</div>
				</li>
			</ul>

			<ul class="main-menu-m">
				<li><a href="/listProduct">ART-PRODUCT</a> <!--<ul class="sub-menu-m">
						<li><a href="index.html">Homepage 1</a></li>
						<li><a href="home-02.html">Homepage 2</a></li>
						<li><a href="home-03.html">Homepage 3</a></li>
					</ul> 
					<span class="arrow-main-menu-m">
						<i class="fa fa-angle-right" aria-hidden="true"></i>
					</span>--></li>

				<li><a href="subscription-detail.html">SUBSCRIPTION (구독)</a></li>

				<li><a href="artist.html" class="label1 rs1" data-label1="hot">ARTIST</a>
				</li>

				<li><a href="about.html">ABOUT</a></li>
			</ul>
		</div>

		<!-- Modal Search -->
		<div
			class="modal-search-header flex-c-m trans-04 js-hide-modal-search">
			<div class="container-search-header">
				<button
					class="flex-c-m btn-hide-modal-search trans-04 js-hide-modal-search">
					<img src="images/icons/icon-close2.png" alt="CLOSE">
				</button>

				<form class="wrap-search-header flex-w p-l-15">
					<button class="flex-c-m trans-04">
						<i class="zmdi zmdi-search"></i>
					</button>
					<input class="plh3" type="text" name="search"
						placeholder="Search...">
				</form>
			</div>
		</div>
	</header>
	<!-- ★★★★★★★★ Cart ★★★★★★★ -->
	<div class="wrap-header-cart js-panel-cart">
		<div class="s-full js-hide-cart"></div>

		<div class="header-cart flex-col-l p-l-65 p-r-25">
			<div class="header-cart-title flex-w flex-sb-m p-b-8">
				<span class="mtext-103 cl2"> cart </span>

				<div
					class="fs-35 lh-10 cl2 p-lr-5 pointer hov-cl1 trans-04 js-hide-cart">
					<i class="zmdi zmdi-close"></i>
				</div>
			</div>

			<div class="header-cart-content flex-w js-pscroll">
				<ul class="header-cart-wrapitem w-full">
					<li class="header-cart-item flex-w flex-t m-b-12">
						<div class="header-cart-item-img">
							<img src="images/item-cart-01.jpg" alt="IMG">
						</div>

						<div class="header-cart-item-txt p-t-8">
							<a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04">
								Bubble Gum 1 </a> <span class="header-cart-item-info"> 1 x
								200,000원 </span>
						</div>
					</li>

					<li class="header-cart-item flex-w flex-t m-b-12">
						<div class="header-cart-item-img">
							<img src="images/item-cart-02.jpg" alt="IMG">
						</div>

						<div class="header-cart-item-txt p-t-8">
							<a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04">
								Only Check Trouser </a> <span class="header-cart-item-info">
								1 x 250,000원 </span>
						</div>
					</li>
				</ul>

				<div class="w-full">
					<div class="header-cart-total w-full p-tb-40">최종 결제 금액 :
						450,000원</div>

					<div class="header-cart-buttons flex-w w-full">
						<a href="shoping-cart.html"
							class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-r-8 m-b-10">
							장바구니 보러가기 </a>
					</div>
				</div>
			</div>
		</div>
	</div>



<!--===============================================================================================-->
<!--===============================================================================================-->	
<!--===============================================================================================-->	
<!--===============================================================================================-->

	<!-- ★★★★★★★★ 상품 등록 ★★★★★★★★ -->
	<!-- ★★★★★★★★ table ★★★★★★★★ -->
	<main class="p-t-50 m-t-10">
		<div class="container">
			<div class="d-flex justify-content-between">
				<h4 class="mb-0" style="font-weight: bold; color: black;">상품 등록</h4>
			</div>

			<hr class="mb-0" style="border: solid 2px black;">
			<div class="m-t-30"></div>
			<div class="container">
				<!-- "등록"을 누르면 /upload 실행 -->
				<form action="upload" method="post" enctype="multipart/form-data"">

					<div class="form-group">
						<label for="productname">작품명</label> <input type="text"
							class="form-control" id="productname" name="productname"
							placeholder="내용을 입력하세요.">
					</div>
					<div class="form-group">
						<label for="artist">작가</label> <input type="text"
							class="form-control" id="artist" name="artist"
							placeholder="내용을 입력하세요.">
					</div>
					<div class="form-group">
						<label for="img">사진 업로드</label> 
						<img src="<c:url value="${insertProduct.filePath}"/>" />
						<input type="file" class="form-control" id="file" name="file"> 		
					</div>


					<div class="form-group">
						<label for=productcontent>작품설명</label>
						<textarea class="form-control" id="productcontent"
							name="productcontent" rows="3"></textarea>
					</div>


					<div class="form-group">
						<label for="productsize">사이즈</label> <input type="text"
							class="form-control" id="productsize" name="productsize"
							placeholder="숫자 x 숫자">
					</div>
					<div class="form-group">
						<label for="price">가격</label> <input type="number"
							class="form-control" id="price" name="price"
							placeholder="가격을 입력하세요.">
					</div>
					<div class="form-group">
						<label for="stock">재고</label> <input type="number"
							class="form-control" id="stock" name="stock"
							placeholder="재고수량을 입력하세요.">
					</div>

			<!-- submit을 누르면 Controller에서 정의한 aws API를 타게 됨 -->
			<br>
			<div class="m-t-20 m-b-50">
				<a href="listProduct" class="btn btn-dark float-left m-r-10"
					role="button">목록</a> 
					<input type="submit" class="btn btn-dark float-left m-r-10" value="작품등록">
			</div>
			<br> <br>
		</div>

				</form>
			</div>
<!--===============================================================================================-->
<!--===============================================================================================-->
<!--===============================================================================================-->
<!--===============================================================================================-->


		<!-- Footer -->
		<footer class="bg3 p-t-75 p-b-32">
			<div class="container">
				<div class="row">
					<div class="col-sm-6 col-lg-3 p-b-50">
						<h4 class="stext-301 cl0 p-b-30">카테고리</h4>

						<ul>
							<li class="p-b-10"><a href="#"
								class="stext-107 cl7 hov-cl1 trans-04"> 정기 구독 </a></li>

							<li class="p-b-10"><a href="#"
								class="stext-107 cl7 hov-cl1 trans-04"> 아트 포스터 </a></li>

							<li class="p-b-10"><a href="#"
								class="stext-107 cl7 hov-cl1 trans-04"> 작가 </a></li>

							<li class="p-b-10"><a href="#"
								class="stext-107 cl7 hov-cl1 trans-04"> 니아트 소개 </a></li>
						</ul>
					</div>

					<div class="col-sm-6 col-lg-3 p-b-50">
						<h4 class="stext-301 cl0 p-b-30">게시판</h4>

						<ul>
							<li class="p-b-10"><a href="#"
								class="stext-107 cl7 hov-cl1 trans-04"> 공지사항 </a></li>

							<li class="p-b-10"><a href="#"
								class="stext-107 cl7 hov-cl1 trans-04"> 문의게시판 </a></li>

							<li class="p-b-10"><a href="#"
								class="stext-107 cl7 hov-cl1 trans-04"> 리뷰게시판 </a></li>

						</ul>
					</div>

					<div class="col-sm-6 col-lg-3 p-b-50">
						<h4 class="stext-301 cl0 p-b-30">브랜드</h4>

						<p class="stext-107 cl7 size-201">
							상호 : 주식회사 니아트 <br> 대표 : 폴리모피즘 <br> 주소 : 서울특별시 금천구 가산동
							426-5 월드 메르디앙 벤처 센터 2차 312호 <br> 통신판매업신고번호 : 2022-서울금천구-2호 <br>
							사업자등록정보 : 012-34-5678
						</p>

						<div class="p-t-27">
							<a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16"> <i
								class="fa fa-facebook"></i>
							</a> <a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16"> <i
								class="fa fa-instagram"></i>
							</a> <a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16"> <i
								class="fa fa-pinterest-p"></i>
							</a>
						</div>
					</div>

					<div class="col-sm-6 col-lg-3 p-b-50">
						<h4 class="stext-301 cl0 p-b-30">contect</h4>

						<form>
							<div class="wrap-input1 w-full p-b-4">
								<input class="input1 bg-none plh1 stext-107 cl7" type="text"
									name="email" placeholder="email@example.com">
								<div class="focus-input1 trans-04"></div>
							</div>

							<div class="p-t-18">
								<button
									class="flex-c-m stext-101 cl0 size-103 bg1 bor1 hov-btn2 p-lr-15 trans-04">
									Subscribe</button>
							</div>
						</form>
					</div>
				</div>

				<div class="p-t-40">
					<div class="flex-c-m flex-w p-b-18">
						<a href="#" class="m-all-1"> <img
							src="images/icons/icon-pay-01.png" alt="ICON-PAY">
						</a> <a href="#" class="m-all-1"> <img
							src="images/icons/icon-pay-02.png" alt="ICON-PAY">
						</a> <a href="#" class="m-all-1"> <img
							src="images/icons/icon-pay-03.png" alt="ICON-PAY">
						</a> <a href="#" class="m-all-1"> <img
							src="images/icons/icon-pay-04.png" alt="ICON-PAY">
						</a> <a href="#" class="m-all-1"> <img
							src="images/icons/icon-pay-05.png" alt="ICON-PAY">
						</a>
					</div>

					<p class="stext-107 cl6 txt-center">
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						NEART &copy;
						<script>document.write(new Date().getFullYear());</script>
						ALL RIGHTS RESERVED.
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->

					</p>
				</div>
			</div>
		</footer>


		<!-- Back to top -->
		<div class="btn-back-to-top" id="myBtn">
			<span class="symbol-btn-back-to-top"> <i
				class="zmdi zmdi-chevron-up"></i>
			</span>
		</div>

		<!-- Modal1 -->
		<div class="wrap-modal1 js-modal1 p-t-60 p-b-20">
			<div class="overlay-modal1 js-hide-modal1"></div>

			<div class="container">
				<div class="bg0 p-t-60 p-b-30 p-lr-15-lg how-pos3-parent">
					<button class="how-pos3 hov3 trans-04 js-hide-modal1">
						<img src="images/icons/icon-close.png" alt="CLOSE">
					</button>

					<div class="row">
						<div class="col-md-6 col-lg-7 p-b-30">
							<div class="p-l-25 p-r-30 p-lr-0-lg">
								<div class="wrap-slick3 flex-sb flex-w">
									<div class="wrap-slick3-dots"></div>
									<div class="wrap-slick3-arrows flex-sb-m flex-w"></div>

									<div class="slick3 gallery-lb">
										<div class="item-slick3"
											data-thumb="images/product-detail-01.jpg">
											<div class="wrap-pic-w pos-relative">
												<img src="images/product-detail-01.jpg" alt="IMG-PRODUCT">

												<a
													class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04"
													href="images/product-detail-01.jpg"> <i
													class="fa fa-expand"></i>
												</a>
											</div>
										</div>

										<div class="item-slick3"
											data-thumb="images/product-detail-02.jpg">
											<div class="wrap-pic-w pos-relative">
												<img src="images/product-detail-02.jpg" alt="IMG-PRODUCT">

												<a
													class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04"
													href="images/product-detail-02.jpg"> <i
													class="fa fa-expand"></i>
												</a>
											</div>
										</div>

										<div class="item-slick3"
											data-thumb="images/product-detail-03.jpg">
											<div class="wrap-pic-w pos-relative">
												<img src="images/product-detail-03.jpg" alt="IMG-PRODUCT">

												<a
													class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04"
													href="images/product-detail-03.jpg"> <i
													class="fa fa-expand"></i>
												</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="col-md-6 col-lg-5 p-b-30">
							<div class="p-r-50 p-t-5 p-lr-0-lg">
								<h4 class="mtext-105 cl2 js-name-detail p-b-14">
									Lightweight Jacket</h4>

								<span class="mtext-106 cl2"> $58.79 </span>

								<p class="stext-102 cl3 p-t-23">Nulla eget sem vitae eros
									pharetra viverra. Nam vitae luctus ligula. Mauris consequat
									ornare feugiat.</p>

								<!--  -->
								<div class="p-t-33">
									<div class="flex-w flex-r-m p-b-10">
										<div class="size-203 flex-c-m respon6">Size</div>

										<div class="size-204 respon6-next">
											<div class="rs1-select2 bor8 bg0">
												<select class="js-select2" name="time">
													<option>Choose an option</option>
													<option>Size S</option>
													<option>Size M</option>
													<option>Size L</option>
													<option>Size XL</option>
												</select>
												<div class="dropDownSelect2"></div>
											</div>
										</div>
									</div>

									<div class="flex-w flex-r-m p-b-10">
										<div class="size-203 flex-c-m respon6">Color</div>

										<div class="size-204 respon6-next">
											<div class="rs1-select2 bor8 bg0">
												<select class="js-select2" name="time">
													<option>Choose an option</option>
													<option>Red</option>
													<option>Blue</option>
													<option>White</option>
													<option>Grey</option>
												</select>
												<div class="dropDownSelect2"></div>
											</div>
										</div>
									</div>

									<div class="flex-w flex-r-m p-b-10">
										<div class="size-204 flex-w flex-m respon6-next">
											<div class="wrap-num-product flex-w m-r-20 m-tb-10">
												<div
													class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
													<i class="fs-16 zmdi zmdi-minus"></i>
												</div>

												<input class="mtext-104 cl3 txt-center num-product"
													type="number" name="num-product" value="1">

												<div
													class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m">
													<i class="fs-16 zmdi zmdi-plus"></i>
												</div>
											</div>

											<button
												class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04 js-addcart-detail">
												Add to cart</button>
										</div>
									</div>
								</div>

								<!--  -->
								<div class="flex-w flex-m p-l-100 p-t-40 respon7">
									<div class="flex-m bor9 p-r-10 m-r-11">
										<a href="#"
											class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 js-addwish-detail tooltip100"
											data-tooltip="Add to Wishlist"> <i
											class="zmdi zmdi-favorite"></i>
										</a>
									</div>

									<a href="#"
										class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100"
										data-tooltip="Facebook"> <i class="fa fa-facebook"></i>
									</a> <a href="#"
										class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100"
										data-tooltip="Twitter"> <i class="fa fa-twitter"></i>
									</a> <a href="#"
										class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100"
										data-tooltip="Google Plus"> <i class="fa fa-google-plus"></i>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!--===============================================================================================-->
		<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
		<!--===============================================================================================-->
		<script src="vendor/animsition/js/animsition.min.js"></script>
		<!--===============================================================================================-->
		<script src="vendor/bootstrap/js/popper.js"></script>
		<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
		<!--===============================================================================================-->
		<script src="vendor/select2/select2.min.js"></script>
		<script>
		$(".js-select2").each(function(){
			$(this).select2({
				minimumResultsForSearch: 20,
				dropdownParent: $(this).next('.dropDownSelect2')
			});
		})
	</script>
		<!--===============================================================================================-->
		<script src="vendor/daterangepicker/moment.min.js"></script>
		<script src="vendor/daterangepicker/daterangepicker.js"></script>
		<!--===============================================================================================-->
		<script src="vendor/slick/slick.min.js"></script>
		<script src="js/slick-custom.js"></script>
		<!--===============================================================================================-->
		<script src="vendor/parallax100/parallax100.js"></script>
		<script>
        $('.parallax100').parallax100();
	</script>
		<!--===============================================================================================-->
		<script src="vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
		<script>
		$('.gallery-lb').each(function() { // the containers for all your galleries
			$(this).magnificPopup({
		        delegate: 'a', // the selector for gallery item
		        type: 'image',
		        gallery: {
		        	enabled:true
		        },
		        mainClass: 'mfp-fade'
		    });
		});
	</script>
		<!--===============================================================================================-->
		<script src="vendor/isotope/isotope.pkgd.min.js"></script>
		<!--===============================================================================================-->
		<script src="vendor/sweetalert/sweetalert.min.js"></script>
		<script>
		$('.js-addwish-b2, .js-addwish-detail').on('click', function(e){
			e.preventDefault();
		});

		$('.js-addwish-b2').each(function(){
			var nameProduct = $(this).parent().parent().find('.js-name-b2').html();
			$(this).on('click', function(){
				swal(nameProduct, "is added to wishlist !", "success");

				$(this).addClass('js-addedwish-b2');
				$(this).off('click');
			});
		});

		$('.js-addwish-detail').each(function(){
			var nameProduct = $(this).parent().parent().parent().find('.js-name-detail').html();

			$(this).on('click', function(){
				swal(nameProduct, "is added to wishlist !", "success");

				$(this).addClass('js-addedwish-detail');
				$(this).off('click');
			});
		});

		/*---------------------------------------------*/

		$('.js-addcart-detail').each(function(){
			var nameProduct = $(this).parent().parent().parent().parent().find('.js-name-detail').html();
			$(this).on('click', function(){
				swal(nameProduct, "is added to cart !", "success");
			});
		});
	
	</script>
		<!--===============================================================================================-->
		<script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
		<script>
		$('.js-pscroll').each(function(){
			$(this).css('position','relative');
			$(this).css('overflow','hidden');
			var ps = new PerfectScrollbar(this, {
				wheelSpeed: 1,
				scrollingThreshold: 1000,
				wheelPropagation: false,
			});

			$(window).on('resize', function(){
				ps.update();
			})
		});
	</script>
		<!--===============================================================================================-->
		<script src="js/main.js"></script>
</body>
</html>