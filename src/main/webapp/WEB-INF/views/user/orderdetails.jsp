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
   <title>마이페이지</title>
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
            <a href="/"><img src="neart-source/logo/logo_b.png" alt="IMG-LOGO"></a>
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

   
   <main class="p-t-50 m-t-10">
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
               <h6 class="mb-2">나의 정보관리</h6>
               <div style="padding: 2px;">
                 <a href="${pageContext.request.contextPath}/update?id=<sec:authentication property="principal.user.id" />" class="text-muted">회원정보수정</a>
               </div>
              </div>
            </ul>
         </div>
      
      
      
      
         <div class="col-md-8 order-md-2" style="color: black;">
         <div class="d-flex justify-content-between">
           <h4 class="mb-0" style="font-weight: bold;">최근 주문내역</h4>
           <a href="${pageContext.request.contextPath}/orderdetailslist?membernum=<sec:authentication property="principal.user.membernum" />" class="text-muted">더보기 〉</a>
         </div>
           <hr class="mb-0" style="border: solid 2px black;">
         <table class="table">
           <thead style="height: 20px;">
            <tr style="height: 20px;">
              <th>주문일</th>
              <th>주문내역</th>
              <th>수량</th>
              <th>금액</th>
            </tr>
           </thead>
           <c:forEach var="detail" items="${orderdetails_view}">
           <tbody>
            <tr>
              <td style="line-height: 100px;">${detail.ordersdate}</td>
              <td> 
                 <img
                  src="/neart-source/image/${detail.productid}.jpg"
                  class="card-img-top"
                  alt="..."
                  style="width: 100px; height: 100px; overflow: hidden;">
                   <span>${detail.productname}</span>
                 </td>
              <td style="line-height: 100px;">${detail.totalquantity}</td>
              <td style="line-height: 100px;"><fmt:formatNumber value="${detail.price}" pattern="#,###" />원</td>
            </tr>
            
           </tbody>
         </c:forEach>
         </table>
      
      
      
            <!-- 찜내역 -->
            <div class="d-flex justify-content-between" style="margin-top: 80px;">
              <h4 class="mb-0" style="font-weight: bold;">MY HEART</h4>
            </div>
            <hr class="mb-4" style="border: solid 2px black;">
      
            <!-- 4개로 맞췄으니 4의 배수만 출력되게 할 것 -->
            <div class="row row-cols-2 row-cols-4">
              <div class="col-6 col-md-3">
               <div class="card shadow-sm" style="border: none;">
                 <img class="bd-placeholder-img card-img-top" width="150px" height="100%" src="/neart-source/image/105.jpg"></img>
        
                 <div class="card-body">
                  <a href="#" class="card-text" style="color: black;">T-Shirt with Sleeve</a>
                 </div>
               </div>
              </div>
              <div class="col-6 col-md-3">
               <div class="card shadow-sm" style="border: none;">
                 <img class="bd-placeholder-img card-img-top" width="150px" height="100%" src="/neart-source/image/110.jpg"></img>
        
                 <div class="card-body">
                  <a href="#" class="card-text" style="color: black;">Pieces Metallic Printed</a>
                 </div>
               </div>
              </div>
              <div class="col-6 col-md-3">
               <div class="card shadow-sm" style="border: none;">
                 <img class="bd-placeholder-img card-img-top" width="150px" height="100%" src="/neart-source/image/112.jpg"></img>
        
                 <div class="card-body">
                  <a href="#" class="card-text" style="color: black;">Vintage Inspired Classic</a>
                 </div>
               </div>
              </div>
              <div class="col-6 col-md-3">
               <div class="card shadow-sm" style="border: none;">
                 <img class="bd-placeholder-img card-img-top" width="150px" height="100%" src="/neart-source/image/106.jpg"></img>
        
                 <div class="card-body">
                  <a href="#" class="card-text" style="color: black;">Herschel supply</a>
                 </div>
               </div>
              </div>
              <div class="col-6 col-md-3">
               <div class="card shadow-sm" style="border: none;">
                 <img class="bd-placeholder-img card-img-top" width="150px" height="100%" src="/neart-source/image/117.jpg"></img>
        
                 <div class="card-body">
                  <a href="#" class="card-text" style="color: black;">Bubble Gum 1</a>
                 </div>
               </div>
              </div>
              
            </div>
           </div>
         </div>
         <div class="flex-c-m flex-w w-full p-t-45"></div>
        </div>
      </div>
   </div>
</div>
</main>
      

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