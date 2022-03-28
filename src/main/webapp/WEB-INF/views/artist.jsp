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
	<title>Artist</title>
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
	<link rel="stylesheet" type="text/css" href="vendor/perfect-scrollbar/perfect-scrollbar.css">
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
						<div class="left-top-bar">
							그림 정기구독으로 그림이 있는 일상을 NEART와 아트 컬렉팅을 시작하세요.
						</div>
	
						<div class="right-top-bar flex-w h-full">
							<a href="/nlist" class="flex-c-m trans-04 p-lr-25">
								공지게시판
							</a>
	
							<a href="/qlist" class="flex-c-m trans-04 p-lr-25">
								Q&A게시판
							</a>
						</div>
					</div>
			</div>

			<div class="wrap-menu-desktop how-shadow1">
				<nav class="limiter-menu-desktop container">
					
					<!-- Logo desktop -->		
					<a href="/" class="logo">
						<img src="neart-source/logo/logo_b.png" alt="IMG-LOGO">
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
							<sec:authorize access="hasRole('ADMIN')">
							<li>
								<a href="/statistics/income">매출통계</a>
							</li>
							</sec:authorize>
						</ul>
					</div>	

					<!-- Icon header 반응형 클 때  -->
					<div class="wrap-icon-header flex-w flex-r-m h-full">
					<sec:authorize access="isAnonymous()">
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
						<h6><sec:authentication property="principal.user.name"/>님</h6>
							<a href="${pageContext.request.contextPath}/logout" method="POST">
								<div class="icon-header-item cl2 hov-cl1 trans-04 p-lr-11 icon-header-noti2 js-show-join">
									<i class=""><svg xmlns="http://www.w3.org/2000/svg" aria-hidden="true" role="img" width="1em" height="1em" 
									preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24"><path fill="currentColor" d="M4 15h2v5h12V4H6v5H4V3a1 1 0 0 1 
									1-1h14a1 1 0 0 1 1 1v18a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1v-6zm6-4V8l5 4l-5 4v-3H2v-2h8z"/></svg></i>
								</div>
					</div>
						<a href="${pageContext.request.contextPath}/orderdetails?membernum=<sec:authentication property="principal.user.membernum" />">
							<div class="flex-c-m h-full bor6">
								<div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti2 js-show-join">
									<i class=""><svg xmlns="http://www.w3.org/2000/svg" aria-hidden="true" role="img" width="0.95em" height="1em" 
									preserveAspectRatio="xMidYMid meet" viewBox="0 0 496 512"><path fill="currentColor" d="M248 8C111 8 0 119 0 
									256s111 248 248 248s248-111 248-248S385 8 248 8zm0 448c-110.3 0-200-89.7-200-200S137.7 56 248 56s200 89.7 
									200 200s-89.7 200-200 200zm-80-216c17.7 0 32-14.3 32-32s-14.3-32-32-32s-32 14.3-32 32s14.3 32 32 32zm160 0c17.7 
									0 32-14.3 32-32s-14.3-32-32-32s-32 14.3-32 32s14.3 32 32 32zm4 72.6c-20.8 25-51.5 39.4-84 
									39.4s-63.2-14.3-84-39.4c-8.5-10.2-23.7-11.5-33.8-3.1c-10.2 8.5-11.5 23.6-3.1 33.8c30 36 74.1 56.6 120.9 
									56.6s90.9-20.6 120.9-56.6c8.5-10.2 7.1-25.3-3.1-33.8c-10.1-8.4-25.3-7.1-33.8 3.1z"/></svg></i>
								</div>
							</div>
						</a>
						
						
					<div class="flex-c-m h-full p-r-5">
						<a href="<c:url value="/cart/list/${principal.user.membernum}"/>">
							<div class="flex-c-m h-full p-r-10 bor6">
								<div class="icon-header-item cl2 hov-cl1 trans-04 p-lr-11 js-show-cart">
									<i class="zmdi zmdi-shopping-cart"></i>
								</div>
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
					<a href="/subscription">SUBSCRIPTION (구독)</a>
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
			<div class="container-search-header">
				<button class="flex-c-m btn-hide-modal-search trans-04 js-hide-modal-search">
					<img src="images/icons/icon-close2.png" alt="CLOSE">
				</button>

				<form class="wrap-search-header flex-w p-l-15">
					<button class="flex-c-m trans-04">
						<i class="zmdi zmdi-search"></i>
					</button>
					<input class="plh3" type="text" name="search" placeholder="Search...">
				</form>
			</div>
		</div>
	</header>


	<!-- Title page -->
	<section class="bg-img1 txt-center p-lr-15 p-tb-92">
		<h2 class="ltext-101 cl txt-center">
			Introducing artists with neart.
		</h2>
		<p>니아트와 함께하는 아티스트들을 소개합니다.</p>
	</section>	


	<!-- Product -->
	<section class="bg0 p-t-23 p-b-130">
		<div class="container">
			<div class="p-b-10">
				<h3 class="ltext-103 cl5">
				</h3>
			</div>

			<div class="row isotope-grid">
				<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
					<!-- Block2 -->
					<div class="block2">
						<div class="block2-pic hov-img0">
							<img src="neart-source/image/artist0.jpg" alt="IMG-artist">
						</div>

						<div class="block2-txt flex-w flex-t p-t-14">
							<div class="block2-txt-child1 flex-col-l">
								<div class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6" >
									베토 퍼미
								</div>

								<span class="stext-105 cl3">
									GRAFFITI ARTIST / RIO DE JANEIRO, BRAZIL
								</span>
							</div>
						</div>
					</div>
				</div>

				<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
					<!-- Block2 -->
					<div class="block2">
						<div class="block2-pic hov-img0">
							<img src="neart-source/image/artist1.jpeg" alt="IMG-artist">
						</div>

						<div class="block2-txt flex-w flex-t p-t-14">
							<div class="block2-txt-child1 flex-col-l">
								<div class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6" >
									아드리안 & 히디
								</div>

								<span class="stext-105 cl3">
									CREATIVE STUDIO / AMSTERDAM, NETHERLANDS
								</span>
							</div>
						</div>
					</div>
				</div>

				<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
					<!-- Block2 -->
					<div class="block2">
						<div class="block2-pic hov-img0">
							<img src="neart-source/image/artist2.jpg" alt="IMG-artist">
						</div>

						<div class="block2-txt flex-w flex-t p-t-14">
							<div class="block2-txt-child1 flex-col-l">
								<div class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6" >
									안나 & 바바라 켄델
								</div>

								<span class="stext-105 cl3">
									ILLUSTRATOR GROUP / SAINT PETERSBURG, RUSSIA

								</span>
							</div>
						</div>
					</div>
				</div>

				<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
					<!-- Block2 -->
					<div class="block2">
						<div class="block2-pic hov-img0">
							<img src="neart-source/image/artist3.jpg" alt="IMG-artist">
						</div>

						<div class="block2-txt flex-w flex-t p-t-14">
							<div class="block2-txt-child1 flex-col-l">
								<div class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6" >
									안드레스 가야르도
								</div>

								<span class="stext-105 cl3">
									PHOTOGRAPHER / TALLINN, ESTONIAPHOTOGRAPHER / TALLINN, ESTONIA

								</span>
							</div>
						</div>
					</div>
				</div>

				<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
					<!-- Block2 -->
					<div class="block2">
						<div class="block2-pic hov-img0">
							<img src="neart-source/image/artist5.jpg" alt="IMG-artist">
						</div>

						<div class="block2-txt flex-w flex-t p-t-14">
							<div class="block2-txt-child1 flex-col-l">
								<div class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6" >
									쿤 폴
								</div>

								<span class="stext-105 cl3">
									GILLUSTRATOR / AMSTERDAM, NETHERLANDS
								</span>
							</div>
						</div>
					</div>
				</div>

				<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
					<!-- Block2 -->
					<div class="block2">
						<div class="block2-pic hov-img0">
							<img src="neart-source/image/artist6.jpg" alt="IMG-artist">
						</div>

						<div class="block2-txt flex-w flex-t p-t-14">
							<div class="block2-txt-child1 flex-col-l">
								<div class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6" >
									다니엘 팅쿵코
								</div>

								<span class="stext-105 cl3">
									ILLUSTRATOR / MANILA, PHILIPPINES
								</span>
							</div>
						</div>
					</div>
				</div>

				<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
					<!-- Block2 -->
					<div class="block2">
						<div class="block2-pic hov-img0">
							<img src="neart-source/image/artist7.jpg" alt="IMG-artist">
						</div>

						<div class="block2-txt flex-w flex-t p-t-14">
							<div class="block2-txt-child1 flex-col-l">
								<div class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6" >
									돌로레스 펠프스
								</div>

								<span class="stext-105 cl3">
									PAINTER / GLOUCESTERSHIRE, U.K
								</span>
							</div>
						</div>
					</div>
				</div>

				<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
					<!-- Block2 -->
					<div class="block2">
						<div class="block2-pic hov-img0">
							<img src="neart-source/image/artist8.jpg" alt="IMG-artist">
						</div>

						<div class="block2-txt flex-w flex-t p-t-14">
							<div class="block2-txt-child1 flex-col-l">
								<div class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6" >
									엘리자 마르자노
								</div>

								<span class="stext-105 cl3">
									ILLUSTRATOR / ARCO, ITALY
								</span>
							</div>
						</div>
					</div>
				</div>

				<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
					<!-- Block2 -->
					<div class="block2">
						<div class="block2-pic hov-img0">
							<img src="neart-source/image/artist9.jpg" alt="IMG-artist">
						</div>

						<div class="block2-txt flex-w flex-t p-t-14">
							<div class="block2-txt-child1 flex-col-l">
								<div class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6" >
									에린 가르시아
								</div>

								<span class="stext-105 cl3">
									PAINTER / LOS ANGELES, U.S.
								</span>
							</div>
						</div>
					</div>
				</div>

				<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
					<!-- Block2 -->
					<div class="block2">
						<div class="block2-pic hov-img0">
							<img src="neart-source/image/artist10.jpg" alt="IMG-artist">
						</div>

						<div class="block2-txt flex-w flex-t p-t-14">
							<div class="block2-txt-child1 flex-col-l">
								<div class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6" >
									타쿠 반나이
								</div>

								<span class="stext-105 cl3">
									ILLUSTRATOR / TOKYO, JAPAN
								</span>
							</div>
						</div>
					</div>
				</div>

				<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
					<!-- Block2 -->
					<div class="block2">
						<div class="block2-pic hov-img0">
							<img src="neart-source/image/artist12.jpg" alt="IMG-artist">
						</div>

						<div class="block2-txt flex-w flex-t p-t-14">
							<div class="block2-txt-child1 flex-col-l">
								<div class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6" >
									타미푸
								</div>

								<span class="stext-105 cl3">
									ILLUSTRATOR / HO CHI MINH CITY, VIETNAM
								</span>
							</div>
						</div>
					</div>
				</div>

				<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
					<!-- Block2 -->
					<div class="block2">
						<div class="block2-pic hov-img0">
							<img src="neart-source/image/artist13.jpg" alt="IMG-artist">
						</div>

						<div class="block2-txt flex-w flex-t p-t-14">
							<div class="block2-txt-child1 flex-col-l">
								<div class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6" >
									타츠로 키우치
								</div>

								<span class="stext-105 cl3">
									ILLUSTRATOR / TOKYO, JAPAN
								</span>
							</div>
						</div>
					</div>
				</div>

				<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
					<!-- Block2 -->
					<div class="block2">
						<div class="block2-pic hov-img0">
							<img src="neart-source/image/artist14.jpg" alt="IMG-artist">
						</div>

						<div class="block2-txt flex-w flex-t p-t-14">
							<div class="block2-txt-child1 flex-col-l">
								<div class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6" >
									정보라
								</div>

								<span class="stext-105 cl3">
									PAINTER / SEOUL, KOREA
								</span>
							</div>
						</div>
					</div>
				</div>

				<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
					<!-- Block2 -->
					<div class="block2">
						<div class="block2-pic hov-img0">
							<img src="neart-source/image/artist15.jpg" alt="IMG-artist">
						</div>

						<div class="block2-txt flex-w flex-t p-t-14">
							<div class="block2-txt-child1 flex-col-l">
								<div class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6" >
									후안 프란시스코
								</div>

								<span class="stext-105 cl3">
									PHOTOGRAPHER / MÁLAGA, SPAIN
								</span>
							</div>
						</div>
					</div>
				</div>

				<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
					<!-- Block2 -->
					<div class="block2">
						<div class="block2-pic hov-img0">
							<img src="neart-source/image/artist16.jpg" alt="IMG-artist">
						</div>

						<div class="block2-txt flex-w flex-t p-t-14">
							<div class="block2-txt-child1 flex-col-l">
								<div class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6" >
									김참새
								</div>

								<span class="stext-105 cl3">
									PAINTER / SEOUL, KOREA
								</span>
							</div>
						</div>
					</div>
				</div>

				<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
					<!-- Block2 -->
					<div class="block2">
						<div class="block2-pic hov-img0">
							<img src="neart-source/image/artist17.jpg" alt="IMG-artist">
						</div>

						<div class="block2-txt flex-w flex-t p-t-14">
							<div class="block2-txt-child1 flex-col-l">
								<div class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6" >
									코타로 마치야마
								</div>

								<span class="stext-105 cl3">
									PAINTER / TOKYO, JAPAN
								</span>
							</div>
						</div>
					</div>
				</div>



			<!-- Pagination -->
			<div class="flex-c-m flex-w w-full p-t-38">
				<a href="#" class="flex-c-m how-pagination1 trans-04 m-all-7 active-pagination1">
					1
				</a>

				<a href="#" class="flex-c-m how-pagination1 trans-04 m-all-7">
					2
				</a>
			</div>
		</div>
	</section>

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
	<script src="vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
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