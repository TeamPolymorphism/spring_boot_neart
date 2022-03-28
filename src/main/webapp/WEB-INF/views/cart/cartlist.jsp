<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal" />
</sec:authorize>
<!DOCTYPE>
<html lang="kor">
<head>
<title>장바구니</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png"
	href="${pageContext.request.contextPath}/images/icons/favicon.png" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/fonts/linearicons-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/util.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/main.css">
<!--===============================================================================================-->

<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<!-- 아래 제이쿼리는 1.0이상이면 원하는 버전을 사용하셔도 무방합니다. -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
	<script>
	function iamport(){
			console.log("아임포트 나와라11");
			//가맹점 식별코드
			IMP.init('imp82620077');
			console.log("아임포트 나와라22");
			IMP.request_pay({
			    pg : 'kcp',
			    pay_method : 'card',
			    merchant_uid : 'smi' + new Date().getTime(),
			    name : '상품1 외,' , //결제창에서 보여질 이름
			    amount : 100, //실제 결제되는 가격
			    buyer_email : 'iamport@siot.do',
			    buyer_name : '구매자이름',
			    buyer_tel : '010-1234-5678',
			    buyer_addr : '서울 강남구 도곡동',
			    buyer_postcode : '123-456'
			}, function(rsp) {
				console.log(rsp);
			    if ( rsp.success ) {
			    	var msg = '결제가 완료되었습니다.';
			        msg += '고유ID : ' + rsp.imp_uid;
			        msg += '상점 거래ID : ' + rsp.merchant_uid;
			        msg += '결제 금액 : ' + rsp.paid_amount;
			        msg += '카드 승인번호 : ' + rsp.apply_num;
			    } else {
			    	 var msg = '결제에 실패하였습니다.';
			         msg += '에러내용 : ' + rsp.error_msg;
			    }
			    alert(msg);
			    console.log("아임포트 나와라55");
			});
		}
	
	</script>
   
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

					<div class="right-top-bar flex-w h-full">
						<a href="/nlist" class="flex-c-m trans-04 p-lr-25"> 공지게시판 </a> <a
							href="/qlist" class="flex-c-m trans-04 p-lr-25"> Q&A게시판 </a>
					</div>
				</div>
			</div>

			<div class="wrap-menu-desktop how-shadow1">
				<nav class="limiter-menu-desktop container">

					<!-- Logo desktop -->
					<a href="/" class="logo"> <img
						src="${pageContext.request.contextPath}/neart-source/logo/logo_b.png"
						alt="IMG-LOGO">
					</a>

					<!-- Menu desktop -->
					<div class="menu-desktop">
						<ul class="main-menu">
							<li><a href="/listProduct">ART-PRODUCT</a></li>

							<li class="label1"><a href="/subscription">SUBSCRIPTION
									(구독)</a></li>

							<li><a href="/artist">ARTIST</a></li>
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
					
					<!-- Icon header 반응형 클 때-->
					<div class="wrap-icon-header flex-w flex-r-m">
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
				<a href="/"><img src="${pageContext.request.contextPath}/neart-source/logo/logo_b.png" alt="IMG-LOGO"></a>
			</div>

			<!-- Icon header -->
			<sec:authorize access="isAuthenticated()">
			<h6><sec:authentication property="principal.user.name"/>님</h6>
			<a href="${pageContext.request.contextPath}/logout" method="POST">
			<div class="wrap-icon-header flex-w flex-r-m h-full m-r-15">
				<div class="icon-header-item cl2 hov-cl1 trans-04 p-lr-11 icon-header-noti2 js-show-join">
					<i class=""><svg xmlns="http://www.w3.org/2000/svg" aria-hidden="true" role="img" width="1em" height="1em" 
						preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24"><path fill="currentColor" d="M4 15h2v5h12V4H6v5H4V3a1 1 0 0 1 
						1-1h14a1 1 0 0 1 1 1v18a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1v-6zm6-4V8l5 4l-5 4v-3H2v-2h8z"/></svg></i>
				</div>
			</div>
			</a>
			<a href="${pageContext.request.contextPath}/orderdetails?membernum=<sec:authentication property="principal.user.membernum" />">
				
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
			</a>
			
			<div class="wrap-icon-header flex-w flex-r-m h-full m-r-15">
					<div class="flex-c-m h-full p-r-5">
					<a href="<c:url value="${pageContext.request.contextPath}/cart/list/${principal.user.membernum}"/>">
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
		
			<ul class="main-menu-m">
				<li>
					<a href="${pageContext.request.contextPath}/listProduct">ART-PRODUCT</a>
				</li>

				<li>
					<a href="${pageContext.request.contextPath}/subscription">SUBSCRIPTION 구독</a>
				</li>

				<li>
					<a href="${pageContext.request.contextPath}/artist" class="label1 rs1" data-label1="hot">ARTIST</a>
				</li>

				<li>
					<a href="${pageContext.request.contextPath}/about">ABOUT</a>
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


	<!-- Shoping Cart -->
	<form class="bg0 p-t-75 p-b-85">
		<div class="container">
			<div class="row">
				<div class="col-lg-10 col-xl-7 m-lr-auto m-b-50">
					<div class="m-l-25 m-r--38 m-lr-0-xl">
						<div class="wrap-table-shopping-cart">
							<table class="table-shopping-cart">
							
									<tr class="table_head">
										<th class="column-1">그림명</th>
										<th class="column-2"></th>
										<th class="column-3" style="text-align: center;">수량</th>
										<th class="column-4" style="text-align: center;">가격</th>
										<th class="column-5" style="text-align: center;"></th>
									</tr>

							<sec:authorize access="isAuthenticated()">
								<c:forEach items="${cartList}" var="cart">
									<tbody>
										<tr class="table_row">
										
											<td class="column-1">
												<div class="how-itemcart1">
													<img src="${cart.filepath}" alt="IMG">
												</div>
											</td>
											<td class="column-2">${cart.productname}</td>
											<td class="column-3" style="text-align: center;">${cart.cartquantity}</td>
											<td class="column-4" style="text-align: center;">&#8361;<fmt:formatNumber
													value="${cart.totalprice}" pattern="#,###" />원
												<%-- <div class="wrap-num-product flex-w m-l-auto m-r-0">
													<div
														class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m"
														id="">
														<i class="fs-16 zmdi zmdi-minus"></i>
													</div>

													<input id="quantity"
														class="mtext-104 cl3 txt-center num-product" type="number"
														name="num-product1" value="${cart.cartquantity}">

													<div
														class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m">
														<i class="fs-16 zmdi zmdi-plus"></i>

													</div>
												</div> --%>
											</td>
											<td class="column-5">
											<a class="a-delete btn btn-dark"
										href="/cart/list?membernum=${cart.membernum}&productid=${cart.productid}">삭제</a>		
											</td>
											
										</tr>
									</tbody>
								</c:forEach>
								</sec:authorize>
							</table>
						</div>
					</div>
				</div>

				<div class="col-sm-10 col-lg-7 col-xl-5 m-lr-auto m-b-50">
					<div
						class="bor10 p-lr-40 p-t-30 p-b-40 m-l-63 m-r-40 m-lr-0-xl p-lr-15-sm">
						<h4 class="mtext-109 cl2 p-b-30">총 결제금액</h4>

						<div class="flex-w flex-t bor12 p-b-13">
							<div class="size-208">
								<span class="stext-110 cl2"> 그림 총 금액: </span>
							</div>

							<div class="size-209">
								<span class="mtext-110 cl2"> &#8361; <fmt:formatNumber
										value="${allprice.allprice}" pattern="#,###" />원
								</span>
							</div>
						</div>

						<div class="flex-w flex-t bor12 p-t-15 p-b-30">
							<div class="size-208 w-full-ssm">
								<span class="stext-110 cl2"> 배송 : </span>
							</div>

							<div class="size-209 p-r-18 p-r-0-sm w-full-ssm">
								<p class="stext-111 cl6 p-t-2">결제 완료로부터 5영업일 내에 발송되며 배송료는
									무료입니다. (단, 기본 배송기간 이상 소요되는 상품 혹은, 품절된 상품은 별도 표기 및 개별 연락을 드립니다.)
								</p>
							</div>
						</div>

						<div class="flex-w flex-t p-t-27 p-b-33">
							<div class="size-208">
								<span class="mtext-101 cl2"> 총 금액: </span>
							</div>

							<div class="size-209 p-t-1">
								<span class="mtext-110 cl2"> &#8361; <fmt:formatNumber
										value="${allprice.allprice}" pattern="#,###" />원
								</span>
							</div>
						</div>
						<div type="button" 
						class="btn btn-dark flex-c-m  size-101  bor1 ">
						<a onClick="iamport();" href="#" style="color: white;">
							결제하기
						</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>




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
					<a href="#" class="m-all-1"> <img
						src="${pageContext.request.contextPath}/images/icons/icon-pay-01.png"
						alt="ICON-PAY">
					</a> <a href="#" class="m-all-1"> <img
						src="${pageContext.request.contextPath}/images/icons/icon-pay-02.png"
						alt="ICON-PAY">
					</a> <a href="#" class="m-all-1"> <img
						src="${pageContext.request.contextPath}/images/icons/icon-pay-03.png"
						alt="ICON-PAY">
					</a> <a href="#" class="m-all-1"> <img
						src="${pageContext.request.contextPath}/images/icons/icon-pay-04.png"
						alt="ICON-PAY">
					</a> <a href="#" class="m-all-1"> <img
						src="${pageContext.request.contextPath}/images/icons/icon-pay-05.png"
						alt="ICON-PAY">
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

	<!--===============================================================================================-->
	<script
		src="${pageContext.request.contextPath}/vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script
		src="${pageContext.request.contextPath}/vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script
		src="${pageContext.request.contextPath}/vendor/bootstrap/js/popper.js"></script>
	<script
		src="${pageContext.request.contextPath}/vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script
		src="${pageContext.request.contextPath}/vendor/select2/select2.min.js"></script>
	<script>
		$(".js-select2").each(function(){
			$(this).select2({
				minimumResultsForSearch: 20,
				dropdownParent: $(this).next('.dropDownSelect2')
			});
		})
	</script>
	<!--===============================================================================================-->
	<script
		src="${pageContext.request.contextPath}/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
	<!--===============================================================================================-->
	<script
		src="${pageContext.request.contextPath}/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
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
	<script src="${pageContext.request.contextPath}/js/main.js"></script>
</body>
</html>