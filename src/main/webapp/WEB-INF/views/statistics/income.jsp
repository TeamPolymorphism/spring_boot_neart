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

<title>매출액 통계</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- ChartJS -->
<script src="${pageContext.request.contextPath}/AdminLTE-master/plugins/chart.js/Chart.min.js"></script>
<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">

<!-- Font Awesome Icons -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/AdminLTE-master/plugins/fontawesome-free/css/all.min.css">
<!-- IonIcons -->
<link rel="stylesheet"
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- Theme style -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/AdminLTE-master/dist/css/adminlte.min.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/AdminLTE-master/plugins/fontawesome-free/css/all.min.css">
<!-- Theme style -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/AdminLTE-master/dist/css/adminlte.min.css">
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

<style>
 h2 {
	margin-right:80px;
	text-align: center;
	padding-bottom: 20px;
	}
	
.member{

	padding-top:100px;
	}
	
.page-content{

	margin-left:100px;
}	
 
 </style>

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
		<div class="row">


<div class="page-content col-md-10">

	<h2 class="member">매출액 통계</h2>

		<!-- 일별 -->
				<select class="form-control" id="choice-month" style="width: 200px">
					<c:forEach var="i" begin="1" end="12">
						<option value="${i}" <c:if test="${i eq month}">selected</c:if>>
							${i} 월</option>
					</c:forEach>
				</select> <br>
			
	

		<div class="row">
			<div class="col-md-5">
			<!-- BAR CHART -->
				<div class="card card-info">
					<div class="card-header" style="background-color: #81F781;">
						<h3 class="card-title" style="color: black;">일별 매출액</h3>
						<div class="card-tools">
							<button type="button" class="btn btn-tool"
								data-card-widget="collapse">
								<i class="fas fa-minus"></i>
							</button>
							<button type="button" class="btn btn-tool"
								data-card-widget="remove">
								<i class="fas fa-times"></i>
							</button>
						</div>
					</div>

					<div class="card-body">
						<div class="chart">
							<canvas id="lineChart"
								style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
						</div>
					</div>
				</div>
				<!-- /.card-body -->

			</div>
			<!-- /.card -->

			<!-- BAR CHART -->
			<div class="col-md-5">
			<div class="card card-success">
				<div class="card-header" style="background-color: #e7ab3c;">
					<h3 class="card-title" style="color: black;">월별 매출액</h3>
					<div class="card-tools">
						<button type="button" class="btn btn-tool"
							data-card-widget="collapse">
							<i class="fas fa-minus"></i>
						</button>
						<button type="button" class="btn btn-tool"
							data-card-widget="remove">
							<i class="fas fa-times"></i>
						</button>
					</div>
				</div>

				<div class="card-body">
					<div class="chart">
						<canvas id="barMonthChart"
							style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
					</div>
				</div>
				<!-- /.card-body -->

			</div>
			</div>
			<!-- /.card -->



			<!-- BAR CHART -->
			<div class="col-md-5">
				<div class="card card-success">
					<div class="card-header" style="background-color: #e7ab3c;">
						<h3 class="card-title" style="color: black;">연도별 매출액</h3>
						<div class="card-tools">
							<button type="button" class="btn btn-tool"
								data-card-widget="collapse">
								<i class="fas fa-minus"></i>
							</button>
							<button type="button" class="btn btn-tool"
								data-card-widget="remove">
								<i class="fas fa-times"></i>
							</button>
						</div>
					</div>

					<div class="card-body">
						<div class="chart">
							<canvas id="barYearChart"
								style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
						</div>
					</div>
					<!-- /.card-body -->
				</div>
			</div>
			<!-- /.card -->


			<!-- DONUT CHART -->
			<div class="col-md-5">
				<div class="card card-danger">
					<div class="card-header">
						<h3 class="card-title" style="color: black;">월별 매출액</h3>

						<div class="card-tools">
							<button type="button" class="btn btn-tool"
								data-card-widget="collapse">
								<i class="fas fa-minus"></i>
							</button>
							<button type="button" class="btn btn-tool"
								data-card-widget="remove">
								<i class="fas fa-times"></i>
							</button>
						</div>
					</div>
					<div class="card-body">
						<canvas id="donutChart"
							style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
					</div>
					<!-- /.card-body -->
				</div>
			</div>
			<!-- /.card -->

			<!-- PIE CHART -->
			<div class="col-md-5">
				<div class="card card-danger">
					<div class="card-header" style="background-color: #A5DF00;">
						<h3 class="card-title" style="color: black;">연도별 매출액</h3>

						<div class="card-tools">
							<button type="button" class="btn btn-tool"
								data-card-widget="collapse">
								<i class="fas fa-minus"></i>
							</button>
							<button type="button" class="btn btn-tool"
								data-card-widget="remove">
								<i class="fas fa-times"></i>
							</button>
						</div>
					</div>
					<div class="card-body">
						<canvas id="pieChart2"
							style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
					</div>
					<!-- /.card-body -->
				</div>
			</div>


			<div class="col-md-5">
				<!-- AREA CHART -->
				<div class="card card-success">
					<div class="card-header">
						<h3 class="card-title" style="color: black;">일별 매출액</h3>

						<div class="card-tools">
							<button type="button" class="btn btn-tool"
								data-card-widget="collapse">
								<i class="fas fa-minus"></i>
							</button>
							<button type="button" class="btn btn-tool"
								data-card-widget="remove">
								<i class="fas fa-times"></i>
							</button>
						</div>
					</div>
					<div class="card-body">
						<div class="chart">
							<canvas id="areaChart2"
								style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
						</div>
					</div>
					<!-- /.card-body -->
				</div>
			</div>
			</div>


	</div>
</div>
	<!-- chart End -->


</body>

<!-- jQuery -->
<script src="${pageContext.request.contextPath}/AdminLTE-master/plugins/jquery/jquery.min.js"></script>

<!-- AdminLTE App -->
<script src="${pageContext.request.contextPath}/AdminLTE-master/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="${pageContext.request.contextPath}/AdminLTE-master/dist/js/demo.js"></script>



<script>
  var chart;
  
  $(function () {
    /* ChartJS
     * -------
     * Here we will create a few charts using ChartJS
     */
     
    //--------------
    //- 일별 CHART -
    //--------------
    
    
    /* loadChart($('#choice-month option:selected').val()); */
    loadChart(${month});
   	
    $('#choice-month').change(function() {
    	var month = $(this).val();
    	loadChart(month);
    });
   
    function loadChart(month) {
		$.ajax({
			url: '/statistics/temp',
			async: false,
			data: {month : month},
			success: function(data) {
				console.log('data', data);
				 
				 var labels =[];
				 var dayData =[]; 
				 
				 var day = getMaxDay(${2019}, month);
				 console.log("day", day);
				
				 for(var i = 1; i <= day; i++ ) {
					
					labels.push(i + "일");
					dayData.push(data[i]);
				 }
				 
					console.log("labels",labels);
					console.log("dayData",dayData);	
					
					var lineChartCanvas = $('#lineChart').get(0).getContext('2d')
					
				    var lineChartData = {
				      labels  : labels,
				      datasets: [
				        {
				          label               : '일별 통계',
				     	  backgroundColor     : '#b2bec3', //라인 그래프를 클릭하면 나타나는 작은 사각형 안의 배경색깔
				          borderColor         : '#b2bec3',//라인 그래프 라인색깔 
				          pointRadius          : false,
				          pointColor          : '#DF013A',
				          pointStrokeColor    : 'rgba(60,141,188,1)',
				          pointHighlightFill  : '#DF013A',
				          pointHighlightStroke: 'rgba(60,141,188,1)',
				          data                : dayData
				        }
				      ]
				    }			    
				    var lineChartOptions = {
				    	      maintainAspectRatio : false,
				    	      responsive : true,
				    	      legend: {
				    	        display: false
				    	      },
				    	      scales: {
				    	        xAxes: [{
				    	          gridLines : {
				    	            display : false,
				    	          }
				    	        }],
				    	        yAxes: [{
				    	          gridLines : {
				    	            display : false,
				    	          }
				    	        }]
				    	      }
				    	    }
				    //-------------
				    //- LINE CHART -
				    //--------------
				    var lineChartOptions = $.extend(true, {}, lineChartOptions)
				    var lineChartData = $.extend(true, {}, lineChartData)
				    lineChartData.datasets[0].fill = false;
			
				    lineChartOptions.datasetFill = false
				    
				    var lineChart = new Chart(lineChartCanvas, {
				        type: 'line',
				        data: lineChartData,
				        options: lineChartOptions
				      })
		
				    //areaChart
				    
			        var barDayilyChartCanvas = $('#areaChart2').get(0).getContext('2d')

			    var barChartData ={
					      labels  : labels,
					      datasets: [
					        {
					          label               : '일별 통계',
					          backgroundColor : ['#DF013A', '#00a65a', '#f39c12', '#00c0ef', '#3c8dbc', '#d2d6de'],
					
					          data                : dayData
					        }
					      ]
					    }			    

				    var barDayilyOptions     = {
					    maintainAspectRatio : false,
					    responsive : true,
					  }
					
					new Chart(barDayilyChartCanvas, {
					    type: 'bar',
					    data: barChartData,
					    options: barDayilyOptions
					  })
					
			
			
			
			}
		});

    
    }
    
    
  
  });

  
  function getMaxDay(year, month) {
	  month -= 1;
	  return 32 - new Date(year, month, 32).getDate();
  }
  
	//-------------
  	//- 월별 CHART -
	//-------------
  
  	var mlabels =[];
   	var monthData =[]; 
    
   	// push로 데이터 삽입 push가 js가 제공하는 배열 객체의 값을 넣을때 사용하는 함수
   	<c:forEach var="i" begin="1" end="12">
   		mlabels.push("${i}" + "월");
		monthData.push("${monthSale[i]}");
	</c:forEach>
  
	var barMonthChartCanvas = $('#barMonthChart').get(0).getContext('2d')
	var barMonthChartData	= {
			labels: mlabels,
			datasets: [
				{
				label: '월별 통계',
				data: monthData,
	       		backgroundColor : ['#e7ab3c', '#00a65a', '#f39c12', '#f56954', '#3c8dbc', '#d2d6de'],
	      		}
	    	]
	  	}
	
	var barMonthOptions     = {
	    maintainAspectRatio : false,
	    responsive : true,
	  }
	
	new Chart(barMonthChartCanvas, {
	    type: 'bar',
	    data: barMonthChartData,
	    options: barMonthOptions
	  })
	
	//-------------
  	//- 년별 CHART -
	//-------------
  	var ylabels = "${year}"; 
   	var yearData = "${yearSale}"; 
   	console.log("ylabels", ylabels);
   	console.log("ydate", yearData);
   	//console.log("yearData", typeof(yearData));
   
	var barYearChartCanvas = $('#barYearChart').get(0).getContext('2d')
	var barYearChartData	= {
			labels: [ylabels],
			datasets: [
				{
				label: '연도별 통계',
				data: [yearData],
	       		backgroundColor : ['#e7ab3c', '#00a65a', '#f56954', '#00c0ef', '#3c8dbc', '#d2d6de'],
	      		}
	    	]
	  	}
	
	var barYearOptions     = {
	    maintainAspectRatio : false,
	    responsive : true,
	    scales: {
			xAxes: [{
				barPercentage: 0.1
	        }],
			yAxes: [
	              {
	                  ticks: {
	                      beginAtZero: true,
	                      stepSize: 200,
	                     // max: 20000
	                  }
	              }
	          ]
	      }
	    
	  }
	
	new Chart(barYearChartCanvas, {
	    type: 'bar',
	    data: barYearChartData,
	    options: barYearOptions
	  })
	
	
	
	
	//-------------
    //- DONUT CHART -
    //-------------
    // Get context with jQuery - using jQuery's .get() method.
    
    var mlabels =[];
   	var monthData =[]; 
    
   	// push로 데이터 삽입 push가 js가 제공하는 배열 객체의 값을 넣을때 사용하는 함수
   	<c:forEach var="i" begin="1" end="12">
   		mlabels.push("${i}" + "월");
		monthData.push("${monthSale[i]}");
	</c:forEach>
    
    var donutChartCanvas = $('#donutChart').get(0).getContext('2d')
    var donutData        = {
   		 labels: mlabels,
     	 datasets: [
        {
          label: '월별 통계',
          data: monthData,
          backgroundColor : ['#f56954', '#00a65a', '#f39c12', '#00c0ef', '#3c8dbc', '#d2d6de'],
        }
      ]
    }
    var donutOptions     = {
      maintainAspectRatio : false,
      responsive : true,
    }
    
  
    //Create pie or douhnut chart
    // You can switch between pie and douhnut using the method below.
    new Chart(donutChartCanvas, {
      type: 'doughnut',
      data: donutData,
      options: donutOptions
    })

    //-------------
    //- PIE CHART -
    //-------------
    // Get context with jQuery - using jQuery's .get() method.
    
    var ylabels = "${year}"; 
   	var yearData = "${yearSale}"; 
   	console.log("ylabels", ylabels);
   	console.log("ydate", yearData);
    
    
    var pieChartCanvas = $('#pieChart2').get(0).getContext('2d')
    var pieData       = {
			labels: [ylabels],
			datasets: [
				{
			
				label: '연도별 통계',
				data: [yearData],
	       		backgroundColor : [ '#f56954', '#e7ab3c', '#00a65a', '#00c0ef', '#3c8dbc', '#d2d6de'],
	      		}
	    	]
	  	}
    var pieOptions     = {
      maintainAspectRatio : false,
      responsive : true,
    }
    //Create pie or douhnut chart
    // You can switch between pie and douhnut using the method below.
    new Chart(pieChartCanvas, {
      type: 'pie',
      data: pieData,
      options: pieOptions
    })
	
	
	
	
	
</script>


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