<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta charset="utf-8">
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript">
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } 


</script>
<!-- //for-mobile-apps -->
<link href="${pageContext.request.contextPath}/web/css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="${pageContext.request.contextPath}/web/css/style.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/web/css/contactstyle.css" type="text/css"
	media="all" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/web/css/faqstyle.css" type="text/css"
	media="all" />
<link href="${pageContext.request.contextPath}/web/css/single.css" rel='stylesheet' type='text/css' />
<link href="${pageContext.request.contextPath}/web/css/medile.css" rel='stylesheet' type='text/css' />
<!-- banner-slider -->
<link href="${pageContext.request.contextPath}/web/css/jquery.slidey.min.css" rel="stylesheet">
<!-- //banner-slider -->
<!-- pop-up -->
<link href="${pageContext.request.contextPath}/web/css/popuo-box.css" rel="stylesheet" type="text/css"
	media="all" />
<!-- //pop-up -->
<!-- font-awesome icons -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/web/css/font-awesome.min.css" />
<!-- //font-awesome icons -->
<!-- js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/web/js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<!-- banner-bottom-plugin -->
<!-- <link href="css/owl.carousel.css" rel="stylesheet" type="text/css" media="all">
 -->
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="${pageContext.request.contextPath}/web/js/owl.carousel.js"></script>

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
	src="http://netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<!-- 예약테이블 -->
<script
	src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<style type="text/css">
body {
	padding: 20px;
	font-family: 'Open Sans', sans-serif;
	background-color: #f7f7f7;
}

.lib-panel {
	margin-bottom: 20Px;
}

.lib-panel img {
	width: 80%;
	background-color: transparent;
}

.lib-panel .row, .lib-panel .col-md-6 {
	padding: 0;
	background-color: #FFFFFF;
}

.lib-panel .lib-row {
	padding: 0 20px 0 20px;
}

.lib-panel .lib-row.lib-header {
	background-color: #FFFFFF;
	font-size: 20px;
	padding: 10px 20px 0 20px;
}

.lib-panel .lib-row.lib-header .lib-header-seperator {
	height: 2px;
	width: 26px;
	background-color: #d9d9d9;
	margin: 7px 0 7px 0;
}

.lib-panel .lib-row.lib-desc {
	position: relative;
	height: 100%;
	display: block;
	font-size: 13px;
}

.lib-panel .lib-row.lib-desc a {
	position: absolute;
	width: 100%;
	bottom: 10px;
	left: 20px;
}

.row-margin-bottom {
	margin-bottom: 20px;
}

.box-shadow {
	-webkit-box-shadow: 0 0 10px 0 rgba(0, 0, 0, .10);
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, .10);
}

.no-padding {
	padding: 0;
}

<!--
예매




 




테이블




 




css--
>
@import
	url(https://fonts.googleapis.com/css?family=Raleway:400,900,700,600,500,300,200,100,800)
	;

body {
	font-family: 'Raleway', sans-serif;
}

.prices-box {
	margin: 50px 0px;
}

.top-content {
	background-color: #4d4d4d;
	padding: 20px;
}

.bottom-content {
	background-color: #ffffff;
	padding: 60px;
}

#prices h3 {
	color: #FFF;
	size: 40x;
}

#prices .features-border li {
	border-top: 1px solid #c7c7c7;
	padding: 10px 0px;
}
</style>
</head>
<body>
	<%@include file="head.jsp"%>
	<div class="container"  >
		<div class="row row-margin-bottom" style="width: 384px;">
			<div class="col-md-5 no-padding lib-item" data-category="view"
				style="width: 850px; height: 500px;">
				<div class="lib-panel" style="width: 923px;">
					<div class="row box-shadow"
						style="margin: 0px auto; text-align: center">
						<div class="col-md-6">
							<img class="lib-img-show" src="${pageContext.request.contextPath}/web/2.jpg" style="height: 100%">
						</div>
						<div class="col-md-6">
							<div class="lib-row lib-header" style="font-size: 30px">
								예매 정보 저장.
								<div class="lib-header-seperator"></div>
							</div>
							<div class="lib-row lib-desc" style="width: 384px;">
								<table style="width: 477px; height: 361px;">
									<tr>
										<td>영화명 :</td>
										<td><input type="text" id="rMovieId" readonly="readonly"
											style="width: 315px;"></td>
									</tr>
									<tr>
										<td>상영관 :</td>
										<td><input type="text" id="rRoomNum" readonly="readonly"
											style="width: 313px;"></td>
									</tr>
									<tr>
										<td>날 짜 :</td>
										<td><input type="text" id="rMovieDate"
											readonly="readonly" style="width: 310px;"></td>
									</tr>
									<tr>
										<td>시 간 :</td>
										<td><input type="text" id="rMovieTime"
											readonly="readonly" style="width: 314px;"></td>
									</tr>

								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- 예약 테이블  -->
	<section id="prices">
		<div class="container">
			<div class="prices-box">
				<div class="row">
					<div
						class="col-lg-4 col-md-4 col-sm-4 col-xs-12 price-table aos-init aos-animate"
						data-aos="fade-right">
						<div class="top-content text-center">

							<div class="title">
								<h3>영 화</h3>
							</div>

						</div>

						<div class="bottom-content text-center">
							<ul class="features-border list-unstyled">
								<li>2 Pages</li>
								<li>10 GB Storage</li>
								<li>100 GB Bandwidth</li>
								<li>1 Domain</li>
								<li>No Support</li>
							</ul>
						</div>

					</div>

					<div
						class="col-lg-4 col-md-4 col-sm-4 col-xs-12 price-table aos-init aos-animate"
						data-aos="fade-up">

						<div class="top-content text-center">

							<div class="title">
								<h3>날 짜</h3>
							</div>

						</div>

						<div class="bottom-content text-center">
							<ul class="features-border list-unstyled">
								<li>10 Pages</li>
								<li>20 GB Storage</li>
								<li>200 GB Bandwidth</li>
								<li>5 Domain</li>
								<li>Limited Support</li>
							</ul>

						</div>

					</div>

					<div
						class="col-lg-4 col-md-4 col-sm-4 col-xs-12 price-table aos-init aos-animate"
						data-aos="fade-left">

						<div class="top-content text-center">

							<div class="title">
								<h3>시 간</h3>
							</div>

						</div>

						<div class="bottom-content text-center">
							<ul class="features-border list-unstyled">
								<li>20 Pages</li>
								<li>50 GB Storage</li>
								<li>500 GB Bandwidth</li>
								<li>10 Domain</li>
								<li>UnlimitedSupport</li>
							</ul>

						</div>

					</div>

				</div>
			</div>

		</div>
	</section>
	<div class="container" id="btndiv">
		<button type="button" class="btn btn-primary btn-lg btn-block"
			width="20px">예매</button>
		<button type="button" class="btn btn-default btn-lg btn-block">취소</button>
	</div>
	<br />
	<%@include file="bottom.jsp"%>
</body>
</html>