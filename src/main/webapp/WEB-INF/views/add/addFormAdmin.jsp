<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal" />
</sec:authorize>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>LOGIN_NEART</title>

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
					<a href="/" class="logo">
						<img src="neart-source/logo/logo_w.png" alt="IMG-LOGO">
					</a>

					<!-- Menu desktop -->
					<div class="menu-desktop">
						<ul class="main-menu">
							<li>
								<a href="/listProduct">ART-PRODUCT</a>
								<!-- <ul class="sub-menu">
									<li><a href="index.html">frame</a></li>
									<li><a href="home-02.html"></a></li>
									<li><a href="home-03.html"></a></li>
								</ul> -->
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

					<!-- Icon header -->
					<div class="wrap-icon-header flex-w flex-r-m h-full">	
						<div class="flex-c-m h-full bor6">
							<a href="/login">
								<div class="icon-header-item cl0 hov-cl1 trans-04 p-lr-11 icon-header-noti2 js-show-join">
									<i class=""><svg xmlns="http://www.w3.org/2000/svg" aria-hidden="true" role="img" width="1em" height="1em" 
									preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24"><path fill="currentColor" d="M4 15h2v5h12V4H6v5H4V3a1 1 0 0 1 
									1-1h14a1 1 0 0 1 1 1v18a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1v-6zm6-4V8l5 4l-5 4v-3H2v-2h8z"/></svg></i>
								</div>
							</a>
						</div>
						<!--
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
						</div>-->

						<div class="flex-c-m h-full p-r-10 bor6">
							<div class="icon-header-item cl2 hov-cl1 trans-04 p-lr-11 js-show-cart">		
<a href="<c:url value="/cart/list/${principal.user.membernum}"/>"><i class="zmdi zmdi-shopping-cart"></i></a>
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
				<a href="/"><img src="neart-source/logo/logo_b.png" alt="IMG-LOGO"></a>
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
					<div class="icon-header-item cl2 hov-cl1 trans-04 p-lr-11 js-show-cart">		
<a href="<c:url value="/cart/list/${principal.user.membernum}"/>"><i class="zmdi zmdi-shopping-cart"></i></a>
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
  <div class="py-5 text-center">
    <h2>관리자 회원가입</h2>
  </div>

  <div class="card-container">
      <div class="row">
        <div class="signin-md-1">
        <c:url value="/add/addAdmin" var="addAdminUrl" />
          <form:form name="frmMember" action="${addAdminUrl}" method="post" id="myForm">
            <div class="form-group has-feedback">
                <label class="control-label" for="id">아이디</label>
                <input class="form-control" type="text" name="id" id="id"/>
                <!-- <span id="overlapErr" class="help-block">사용할 수 없는 아이디 입니다.</span> -->
                <span class="glyphicon glyphicon-ok form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <label class="control-label" for="pwd">비밀번호</label>
                <input class="form-control" type="password" name="password" id="pwd"/>
                <span id="pwdRegErr" class="help-block">4글자 이상 입력하세요.</span>
                <span class="glyphicon glyphicon-ok form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <label class="control-label" for="rePwd">비밀번호 재확인</label>
                <input class="form-control" type="password" name="rePwd" id="rePwd"/>
                <span id="rePwdErr" class="help-block">비밀번호와 일치하지 않습니다. 다시 입력해 주세요.</span>
                <span class="glyphicon glyphicon-ok form-control-feedback"></span>
            </div>

            <div class="mb-3">
              <label for="name">이름</label>
              <input type="text" class="form-control" id="name" name="name" required>
              <div class="invalid-feedback">
              </div>
            </div>

            <div class="form-group has-feedback">
                <label class="control-label" for="email">이메일</label>
                <input class="form-control" type="text" name="email" id="email" placeholder="___@___"/>
                <span id="emailErr" class="help-block">올바른 이메일 형식이 아닙니다. 다시 입력해 주세요.</span>
                <span class="glyphicon glyphicon-ok form-control-feedback"></span>
            </div>
            <div class="row">
              <div class="col-md-3 mb-3">
                <label for="country">생년월일</label>
                <input type="text" class="form-control" id="year" name="year" required>
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
                <input type="text" class="form-control" id="month" name="month" required>
                <div class="invalid-feedback">
                </div>
              </div>
              <div class="col-md-2 mb-3">
                <label for="zip">일</label>
                <input type="text" class="form-control" id="date" name="day" placeholder="" required>
                <div class="invalid-feedback">
                </div>
              </div>
            </div>
            <div class="mb-3">
              <label for="address">전화번호</label>
              <input type="text" class="form-control" id="phonenum" name="phonenum" placeholder="010부터 입력하세요." required>
              <div class="invalid-feedback">
              </div>
            </div>
            <div class="mb-3">
              <label for="address">주소</label>
              <input type="text" class="form-control" id="address" name="address" placeholder="" required>
              <div class="invalid-feedback">
              </div>
            </div>
            <hr class="mb-4">
            <div class="custom-control custom-checkbox">
              <input type="checkbox" class="custom-control-input" id="same-address">
              <label class="custom-control-label" for="same-address">주소지를 확인하세요.</label>
            </div>
            <div class="custom-control custom-checkbox">
              <input type="checkbox" class="custom-control-input" id="save-info">
              <label class="custom-control-label" for="save-info">약관에 동의합니다.</label>
            </div>
            <hr class="mb-4">
            <button class="btn btn-block" type="submit" style="color: white;">Sign In</button>
          </form:form>
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





    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>

    <script>
      // Example starter JavaScript for disabling form submissions if there are invalid fields
      (function() {
        'use strict';

        window.addEventListener('load', function() {
          // Fetch all the forms we want to apply custom Bootstrap validation styles to
          var forms = document.getElementsByClassName('needs-validation');

          // Loop over them and prevent submission
          var validation = Array.prototype.filter.call(forms, function(form) {
            form.addEventListener('submit', function(event) {
              if (form.checkValidity() === false) {
                event.preventDefault();
                event.stopPropagation();
              }
              form.classList.add('was-validated');
            }, false);
          });
        }, false);
      })();



  $(document).ready(function(){
    $('.main i').on('click',function(){
        $('input').toggleClass('active');
        if($('input').hasClass('active')){
            $(this).attr('class',"fa fa-eye-slash fa-lg")
            .prev('input').attr('type',"text");
        }else{
            $(this).attr('class',"fa fa-eye fa-lg")
            .prev('input').attr('type','password');
        }
    });
});

//아이디 입력란에 keyup 이벤트가 일어 났을때 실행할 함수 등록 
    // $("#id").keyup(function(){
    //     //입력한 문자열을 읽어온다.
    //     var id=$(this).val();
    //     //ajax 요청을 해서 서버에 전송한다.
    //     $.ajax({
    //         method:"post",
    //         url:"/idCheck",
    //         data:{inputId:id},
    //         success:function(data){
    //             var obj=JSON.parse(data);
    //             if(obj.canUse){//사용 가능한 아이디 라면 
    //                 $("#overlapErr").hide();
    //                 // 성공한 상태로 바꾸는 함수 호출
    //                 successState("#id");
                    
    //             }else{//사용 가능한 아이디가 아니라면 
    //                 $("#overlapErr").show();
    //                 errorState("#id");
    //             }
    //         }
    //     });
    // });

//비밀번호 코드
    $("#pwd").keyup(function(){
        var pwd=$(this).val();
        // 비밀번호 검증할 정규 표현식
        var reg=/^.{4,}$/;
        if(reg.test(pwd)){//정규표현식을 통과 한다면
                    $("#pwdRegErr").hide();
                    successState("#pwd");
        }else{//정규표현식을 통과하지 못하면
                    $("#pwdRegErr").show();
                    errorState("#pwd");
        }
    });
    $("#rePwd").keyup(function(){
        var rePwd=$(this).val();
        var pwd=$("#pwd").val();
        // 비밀번호 같은지 확인
        if(rePwd==pwd){//비밀번호 같다면
            $("#rePwdErr").hide();
            successState("#rePwd");
        }else{//비밀번호 다르다면
            $("#rePwdErr").show();
            errorState("#rePwd");
        }
    });
    $("#email").keyup(function(){
        var email=$(this).val();
        // 이메일 검증할 정규 표현식
        var reg=/^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
        if(reg.test(email)){//정규표현식을 통과 한다면
                    $("#emailErr").hide();
                    successState("#email");
        }else{//정규표현식을 통과하지 못하면
                    $("#emailErr").show();
                    errorState("#email");
        }
    });
    // 성공 상태로 바꾸는 함수
    function successState(sel){
        $(sel)
        .parent()
        .removeClass("has-error")
        .addClass("has-success")
        .find(".glyphicon")
        .removeClass("glyphicon-remove")
        .addClass("glyphicon-ok")
        .show();
 
        $("#myForm button[type=submit]")
                    .removeAttr("disabled");
    };
    // 에러 상태로 바꾸는 함수
    function errorState(sel){
        $(sel)
        .parent()
        .removeClass("has-success")
        .addClass("has-error")
        .find(".glyphicon")
        .removeClass("glyphicon-ok")
        .addClass("glyphicon-remove")
        .show();
 
        $("#myForm button[type=submit]")
                    .attr("disabled","disabled");
    };


    </script>
  </body>
</html>
