<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal" />
</sec:authorize>
<!DOCTYPE html>
<html lang="kor">
<head>
<title>그림정기구독_NEART</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
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
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>

<body class="animsition">

	<!-- Header -->
	<header class="header-v3">
		<!-- Header desktop -->
		<div class="container-menu-desktop trans-03">
			<div class="wrap-menu-desktop">
				<nav class="limiter-menu-desktop p-l-45">

					<!-- Logo desktop -->
					<a href="/" class="logo"> <img
						src="neart-source/logo/logo_w.png" alt="IMG-LOGO">
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


					<!-- Icon header 반응형 클 때 아이콘 -->
					<div class="wrap-icon-header flex-w flex-r-m h-full">
						<sec:authorize access="isAnonymous()">
						<div class="flex-c-m h-full bor6">
							<a href="/login">
								<div class="icon-header-item cl0 hov-cl1 trans-04 p-lr-11 icon-header-noti2 js-show-join">
									<i class=""><svg xmlns="http://www.w3.org/2000/svg" aria-hidden="true" role="img" width="1em" height="1em" 
									preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24"><path fill="currentColor" d="M4 15h2v5h12V4H6v5H4V3a1 1 0 0 1 
									1-1h14a1 1 0 0 1 1 1v18a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1v-6zm6-4V8l5 4l-5 4v-3H2v-2h8z"/></svg></i>
								</div>
							</a>
						</div>
						</sec:authorize>
						
						<sec:authorize access="isAuthenticated()">
						<div class="flex-c-m h-full bor6">
							<h6><sec:authentication property="principal.user.name"/>님 환영합니다.</h6>
						 	<a href="${pageContext.request.contextPath}/logout" method="POST">
							 	<div class="icon-header-item cl0 hov-cl1 trans-04 p-lr-11 icon-header-noti2 js-show-join">
										<i class=""><svg xmlns="http://www.w3.org/2000/svg" aria-hidden="true" role="img" width="1em" height="1em" 
										preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24"><path fill="currentColor" d="M4 15h2v5h12V4H6v5H4V3a1 1 0 0 1 
										1-1h14a1 1 0 0 1 1 1v18a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1v-6zm6-4V8l5 4l-5 4v-3H2v-2h8z"/></svg></i>
								</div>
							</a>
						</div>
						
						<a href="${pageContext.request.contextPath}/orderdetails?membernum=<sec:authentication property="principal.user.membernum" />">
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
						</a>
						
						
							<div class="flex-c-m h-full p-r-10 bor6">
								<a href="<c:url value="/cart/list/${principal.user.membernum}"/>">
									<div class="icon-header-item cl0 hov-cl1 trans-04 p-lr-11 js-show-cart">
										<i class="zmdi zmdi-shopping-cart"></i>
									</div>
								</a>
							</div>
						</sec:authorize>
				
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
			<sec:authorize access="isAnonymous()">
				<div class="wrap-icon-header flex-w flex-r-m h-full m-r-15">
					<a href="/login">
						<div class="icon-header-item cl2 hov-cl1 trans-04 p-lr-11 icon-header-noti2 js-show-join">
							<i class=""><svg xmlns="http://www.w3.org/2000/svg" aria-hidden="true" role="img" width="1em" height="1em" 
								preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24"><path fill="currentColor" d="M4 15h2v5h12V4H6v5H4V3a1 1 0 0 1 
								1-1h14a1 1 0 0 1 1 1v18a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1v-6zm6-4V8l5 4l-5 4v-3H2v-2h8z"/></svg></i>
						</div>
					</a>
				</div>
			</sec:authorize>
			<sec:authorize access="isAuthenticated()">
				<div class="wrap-icon-header flex-w flex-r-m h-full m-r-15">
					<h6><sec:authentication property="principal.user.name"/>님</h6>
					<a href="${pageContext.request.contextPath}/logout" method="POST">
						<div class="icon-header-item cl2 hov-cl1 trans-04 p-lr-11 icon-header-noti2 js-show-join">
							<i class=""><svg xmlns="http://www.w3.org/2000/svg" aria-hidden="true" role="img" width="1em" height="1em" 
								preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24"><path fill="currentColor" d="M4 15h2v5h12V4H6v5H4V3a1 1 0 0 1 
								1-1h14a1 1 0 0 1 1 1v18a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1v-6zm6-4V8l5 4l-5 4v-3H2v-2h8z"/></svg></i>
						</div>
					</a>	
				</div>
				<a href="${pageContext.request.contextPath}/orderdetails?membernum=<sec:authentication property="principal.user.membernum" />">
				<div class="wrap-icon-header flex-w flex-r-m h-full m-r-15">
					<div class="icon-header-item cl2 hov-cl1 trans-04 p-lr-11 icon-header-noti2 js-show-join" >
						<i class=""><svg xmlns="http://www.w3.org/2000/svg" aria-hidden="true" role="img" width="0.97em" height="1em" 
							preserveAspectRatio="xMidYMid meet" viewBox="0 0 496 512"><path fill="currentColor" d="M248 8C111 8 0 119 0 
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
					<a href="<c:url value="/cart/list/${principal.user.membernum}"/>">
						<div class="flex-c-m h-full p-r-10 bor6">
							<div class="icon-header-item cl2 hov-cl1 trans-04 p-lr-11 js-show-cart">
								<i class="zmdi zmdi-shopping-cart"></i>
							</div>
						</div>
						</a>
					</div>
				</div>
			</sec:authorize>

				<!-- Button show menu -->
				<div class="btn-show-menu-mobile hamburger hamburger--squeeze">
					<span class="hamburger-box">
						<span class="hamburger-inner"></span>
					</span>
				</div>
			</div>


			<!-- Menu Mobile -->
			<div class="menu-mobile">
			<sec:authorize access="isAuthenticated()">
			<ul class="topbar-mobile">
				<li>
					<div class="left-top-bar">
						그림 정기구독으로 그림이 있는 일상을 NEART와 아트 컬렉팅을 시작하세요.
					</div>
				</li>

				<li>
					<div class="right-top-bar flex-w h-full">
						<a href="/nlist" class="flex-c-m trans-04 p-lr-25">
							공지게시판
						</a>
						<a href="/qlist" class="flex-c-m trans-04 p-lr-25">
							Q&A게시판
						</a>
					</div>
				</li>
			</ul>
		</sec:authorize>
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



	<!-- Slider -->
	<section class="section-slide">
		<div class="wrap-slick1 rs2-slick1">
			<div class="slick1">
				<div class="item-slick1 " style="background-image: url(neart-source/image/main-slide2.gif);" data-thumb="images/thumb-01.jpg" data-caption="Women’s Wear">
					<div class="container h-50">

						<div class="container h-full">
							<div class="flex-col-l-m h-full p-t-100 p-b-30  respon5">
								<div class="layer-slick1 animated visible-false" data-appear="fadeInDown" data-delay="0">
									<span class="ltext-2021 cl2 respon2">
										그림 정기구독으로 그림이 있는 일상을,
									</span>
								</div>
									
								<div class="layer-slick1 animated visible-false" data-appear="fadeInUp" data-delay="800">
									<h2 class="ltext-1051 cl2 p-t-19 p-b-43 respon1">
										아트 컬렉팅을 시작하세요.
									</h2>
								</div>
									
								<div class="layer-slick1 animated visible-false" data-appear="zoomIn" data-delay="1600">
									<a href="subscription-detail.html" class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04">
										구독 서비스 안내
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
	</section>


	<!-- Banner -->
	<div class="sec-banner bg0 p-t-95 p-b-55">
		<div class="container">
			<div class="row">
				<div class="col-md-6 p-b-30 m-lr-auto">
					<!-- Block1 -->
					<div class="block1 wrap-pic-w">
						<img src="neart-source/image/banner-artist.jpg" alt="IMG-BANNER">

						<a href="/artist" class="block1-txt ab-t-l s-full flex-col-l-sb p-lr-38 p-tb-34 trans-03 respon3">
							<div class="block1-txt-child1 flex-col-l">
								<span class="block1-name ltext-102 trans-04 p-b-8">
									ARTIST
								</span>

								<span class="block1-info stext-102 trans-04">
									NEART와 <br> 함께 하는 작가들
								</span>
							</div>

							<div class="block1-txt-child2 p-b-4 trans-05">
								<div class="block1-link stext-101 cl0 trans-09">
									보러가기
								</div>
							</div>
						</a>
					</div>
				</div>
				

				<div class="col-md-6 p-b-30 m-lr-auto">
					<!-- Block1 -->
					<div class="block1 wrap-pic-w">
						<img src="neart-source/image/banner-kids.jpg" alt="IMG-BANNER">

						<a href="/kids" class="block1-txt ab-t-l s-full flex-col-l-sb p-lr-38 p-tb-34 trans-03 respon3">
							<div class="block1-txt-child1 flex-col-l">
								<span class="block1-name ltext-102 trans-04 p-b-8">
									KIDS
								</span>

								<span class="block1-info stext-102 trans-04">
									아이들을 위한 아트
								</span>
							</div>

							<div class="block1-txt-child2 p-b-4 trans-05">
								<div class="block1-link stext-101 cl0 trans-09">
									보러가기
								</div>
							</div>
						</a>
					</div>
				</div>

				<div class="col-md-6 col-lg-4 p-b-30 m-lr-auto">
					<!-- Block1 -->
					<div class="block1 wrap-pic-w">
						<img src="neart-source/image/banner-notice.jpg" alt="IMG-BANNER">

						<a href="/listProduct" class="block1-txt ab-t-l s-full flex-col-l-sb p-lr-38 p-tb-34 trans-03 respon3">
							<div class="block1-txt-child1 flex-col-l">
								<span class="block1-name ltext-102 trans-04 p-b-8">
									
								</span>

								<span class="block1-info stext-102 trans-04">
									
								</span>
							</div>

							<div class="block1-txt-child2 p-b-4 trans-05">
								<div class="block1-link stext-101 cl0 trans-09">
									보러가기
								</div>
							</div>
						</a>
					</div>
				</div>

				<div class="col-md-6 col-lg-4 p-b-30 m-lr-auto">
					<!-- Block1 -->
					<div class="block1 wrap-pic-w">
						<img src="neart-source/image/banner-album.jpg" alt="IMG-BANNER">

						<a href="/fabricArt" class="block1-txt ab-t-l s-full flex-col-l-sb p-lr-38 p-tb-34 trans-03 respon3">
							<div class="block1-txt-child1 flex-col-l">
								<span class="block1-name ltext-102 trans-04 p-b-8">
									Fabric
								</span>

								<span class="block1-info stext-102 trans-04">
									Fabric art
								</span>
							</div>

							<div class="block1-txt-child2 p-b-4 trans-05">
								<div class="block1-link stext-101 cl0 trans-09">
									구매하러 가기
								</div>
							</div>
						</a>
					</div>
				</div>

				<div class="col-md-6 col-lg-4 p-b-30 m-lr-auto">
					<!-- Block1 -->
					<div class="block1 wrap-pic-w">
						<img src="neart-source/image/banner-frame.jpg" alt="IMG-BANNER">

						<a href="/artPoster" class="block1-txt ab-t-l s-full flex-col-l-sb p-lr-38 p-tb-34 trans-03 respon3">
							<div class="block1-txt-child1 flex-col-l">
								<span class="block1-name ltext-102 trans-04 p-b-8">
									Poster
								</span>

								<span class="block1-info stext-102 trans-04">
									Art Poster
								</span>
							</div>

							<div class="block1-txt-child2 p-b-4 trans-05">
								<div class="block1-link stext-101 cl0 trans-09">
									더보기
								</div>
							</div>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- Product -->
	<section class="bg0 p-t-23 p-b-130">
		<div class="container">
			<div class="p-b-10">
				<h3 class="ltext-103 cl5">Art-Product Overview</h3>
			</div>

			<div class="flex-w flex-sb-m p-b-8">
				<div class="flex-w flex-l-m filter-tope-group m-tb-10"></div>
			</div>

			<div class="row isotope-grid">
				<c:forEach items="${productBoard}" var="product">
					<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
						<!-- Block2 -->
						<div class="block2">
							<div class="block2-pic hov-img0">
								<img src="${product.filePath}" alt="IMG-PRODUCT" width="315" height="315">
							</div>

							<div class="block2-txt flex-w flex-t p-t-14">
								<div class="block2-txt-child1 flex-col-l">
									<a href="detailProduct?productid=${product.productid}" class="stext-104 cl4 hov-cl1 trans-04 
									js-name-b2 p-b-6"> ${product.productname} </a> 
									<span class="stext-105 cl3"> &#8361; <fmt:formatNumber value="${product.price}" pattern="#,###" />
								</div>

								<div class="block2-txt-child2 flex-r p-t-3">
									<a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
										<img class="icon-heart1 dis-block trans-04" src="images/icons/icon-heart-01.png" alt="ICON"> 
										<img class="icon-heart2 dis-block trans-04 ab-t-l" src="images/icons/icon-heart-02.png" alt="ICON">
									</a>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>

			<!-- Pagination -->
			<div class="flex-c-m flex-w w-full p-t-38">
				<a href="#" class="flex-c-m how-pagination1 trans-04 m-all-7 active-pagination1">
				1 </a>
			</div>
		</div>
	</section>
	
	


	<!-- Footer -->
	<footer class="bg3 p-t-75 p-b-32">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-lg-3 p-b-50">
					<h4 class="stext-301 cl0 p-b-30">카테고리</h4>

					<ul>
						<li class="p-b-10"><a href="/subscription"
							class="stext-107 cl7 hov-cl1 trans-04"> 정기 구독 </a></li>

						<li class="p-b-10"><a href="/listProduct"
							class="stext-107 cl7 hov-cl1 trans-04"> 아트 포스터 </a></li>

						<li class="p-b-10"><a href="/artist"
							class="stext-107 cl7 hov-cl1 trans-04"> 작가 </a></li>

						<li class="p-b-10"><a href="/about"
							class="stext-107 cl7 hov-cl1 trans-04"> 니아트 소개 </a></li>
					</ul>
				</div>

				<div class="col-sm-6 col-lg-3 p-b-50">
					<h4 class="stext-301 cl0 p-b-30">게시판</h4>

					<ul>
						<li class="p-b-10"><a href="/nlist"
							class="stext-107 cl7 hov-cl1 trans-04"> 공지사항 </a></li>

						<li class="p-b-10"><a href="/qlist"
							class="stext-107 cl7 hov-cl1 trans-04"> Q&A게시판 </a></li>

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
						<a href="https://ko-kr.facebook.com/"
							class="fs-18 cl7 hov-cl1 trans-04 m-r-16"> <i
							class="fa fa-facebook"></i>
						</a> <a href="https://www.instagram.com/?hl=ko"
							class="fs-18 cl7 hov-cl1 trans-04 m-r-16"> <i
							class="fa fa-instagram"></i>
						</a> <a href="https://www.pinterest.co.kr/"
							class="fs-18 cl7 hov-cl1 trans-04 m-r-16"> <i
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
						</form>

						<div class="p-t-18">
							<button
								class="flex-c-m stext-101 cl0 size-103 bg1 bor1 hov-btn2 p-lr-15 trans-04" onclick = "location.href = 'subscription'">
								Subscribe</button>
						</div>
					
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
					<script>
						document.write(new Date().getFullYear());
					</script>
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

	<!-- Modal1 미리보기 -->
	<!-- Modal1 미리보기 -->
	<!-- Modal1 미리보기 -->
	<div class="wrap-modal1 js-modal1 p-t-60 p-b-20">
		<div class="overlay-modal1 js-hide-modal1"></div>
		<!-- 여기에 foreach -->
		<c:forEach items="${preview}" var="preview">
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
										<div class="item-slick3" data-thumb="${preview.filePath}">
											<div class="wrap-pic-w pos-relative">
												<img src="${preview.filePath}" alt="IMG-PRODUCT"> <a
													class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04"
													href="${preview.filePath}"> <i class="fa fa-expand"></i>
												</a>
											</div>
										</div>

									</div>
								</div>
							</div>
						</div>

						<div class="col-md-6 col-lg-5 p-b-30">
							<div class="p-r-50 p-t-5 p-lr-0-lg">
								<h4 class="mtext-105 cl2 js-name-detail p-b-14">${preview.productname}</h4>
								<span class="mtext-106 cl2"> &#8361;<fmt:formatNumber
										value="${preview.price}" pattern="#,###" />
								</span>

								<p class="stext-102 cl3 p-t-23">${preview.productcontent}</p>

								<!--  -->
								<div class="p-t-33">
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
												장바구니에 담기</button>

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

									<a href="https://ko-kr.facebook.com/"
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
		
		<!-- 여기에 foreach -->
	</div>
	</c:forEach>
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
		$(".js-select2").each(function() {
			$(this).select2({
				minimumResultsForSearch : 20,
				dropdownParent : $(this).next('.dropDownSelect2')
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
				delegate : 'a', // the selector for gallery item
				type : 'image',
				gallery : {
					enabled : true
				},
				mainClass : 'mfp-fade'
			});
		});
	</script>
	<!--===============================================================================================-->
	<script src="vendor/isotope/isotope.pkgd.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/sweetalert/sweetalert.min.js"></script>
	<script>
		$('.js-addwish-b2').on('click', function(e) {
			e.preventDefault();
		});

		$('.js-addwish-b2').each(
				function() {
					var nameProduct = $(this).parent().parent().find(
							'.js-name-b2').html();
					$(this).on('click', function() {
						swal(nameProduct, "is added to wishlist !", "success");

						$(this).addClass('js-addedwish-b2');
						$(this).off('click');
					});
				});

		$('.js-addwish-detail').each(
				function() {
					var nameProduct = $(this).parent().parent().parent().find(
							'.js-name-detail').html();

					$(this).on('click', function() {
						swal(nameProduct, "is added to wishlist !", "success");

						$(this).addClass('js-addedwish-detail');
						$(this).off('click');
					});
				});

		/*---------------------------------------------*/

		$('.js-addcart-detail').each(
				function() {
					var nameProduct = $(this).parent().parent().parent()
							.parent().find('.js-name-detail').html();
					$(this).on('click', function() {
						swal(nameProduct, "is added to cart !", "success");
					});
				});
	</script>
	<!--===============================================================================================-->
	<script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function() {
			$(this).css('position', 'relative');
			$(this).css('overflow', 'hidden');
			var ps = new PerfectScrollbar(this, {
				wheelSpeed : 1,
				scrollingThreshold : 1000,
				wheelPropagation : false,
			});

			$(window).on('resize', function() {
				ps.update();
			})
		});
	</script>
	<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>