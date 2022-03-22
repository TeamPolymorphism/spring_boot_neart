<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>매출액 통계</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- ChartJS -->
<script src="/resources/AdminLTE-master/plugins/chart.js/Chart.min.js"></script>
<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">

<!-- Font Awesome Icons -->
<link rel="stylesheet"
	href="/resources/AdminLTE-master/plugins/fontawesome-free/css/all.min.css">
<!-- IonIcons -->
<link rel="stylesheet"
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- Theme style -->
<link rel="stylesheet"
	href="/resources/AdminLTE-master/dist/css/adminlte.min.css">

<link rel="stylesheet"
	href="/resources/AdminLTE-master/plugins/fontawesome-free/css/all.min.css">
<!-- Theme style -->
<link rel="stylesheet"
	href="/resources/AdminLTE-master/dist/css/adminlte.min.css">


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

</head>
<body>

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
<script src="/resources/AdminLTE-master/plugins/jquery/jquery.min.js"></script>

<!-- AdminLTE App -->
<script src="/resources/AdminLTE-master/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="/resources/AdminLTE-master/dist/js/demo.js"></script>



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
				 
				 var day = getMaxDay(${2021}, month);
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




</html>
