<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Movie Detail</title>

<!-- Custom styles for this template -->
<link href="${pageContext.request.contextPath}/web/css/blog-home.css" rel="stylesheet">

<!-- for-mobile-apps -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript">
	
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } 



</script>
<link href="${pageContext.request.contextPath}/web/css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="${pageContext.request.contextPath}/web/css/style.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/web/css/contactstyle.css" type="text/css"
	media="all" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/web/css/faqstyle.css" type="text/css"
	media="all" />
<link href="${pageContext.request.contextPath}/web/css/single.css" rel='stylesheet' type='text/css' />
<link href="${pageContext.request.contextPath}/web/css/medile.css" rel='stylesheet' type='text/css' />
<link href="${pageContext.request.contextPath}/web/css/jquery.slidey.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/web/css/popuo-box.css" rel="stylesheet" type="text/css"
	media="all" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/web/css/font-awesome.min.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/web/js/jquery-2.1.4.min.js"></script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="${pageContext.request.contextPath}/web/js/owl.carousel.js"></script>
<!-- //banner-bottom-plugin -->
<!-- <link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,700italic,700,400italic,300italic,300' rel='stylesheet' type='text/css'> -->
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="${pageContext.request.contextPath}/web/js/move-top.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/web/js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1000);
		});
	});
</script>
<script src="${pageContext.request.contextPath}/web/js/simplePlayer.js"></script>
<script>
	$("document").ready(function() {
		$("#video").simplePlayer();
	});
</script>

<!-- start-smoth-scrolling -->
<style>
.header {
	margin-top: -50px;
}
th,td,table{
	border:1px solid gray;
}
th{
	background-color: black;
	font-weight: bold;
	text-align: center;
}

</style>
</head>

<body>
	<%@include file="head.jsp"%>
	<!-- Page Content -->
	<div class="container">

		<div class="row">

			<div class="col-md-12">

				<div class="card mb-4">
					<div class="video-grid-single-page-agileits">
						<div data-video="${movie.movie_youtube}" id="video">
							<img src="${movie.movie_path}" alt="" class="img-responsive" />
						</div>
					</div>
				</div>
				<table class="table">
					<tr>
						<th style="color: white;">영화제목</th>
						<td>${movie.movie_title}</td>
					</tr>
					<tr>
						<th style="color: white">감독</th>
						<td>${movie.movie_dir}</td>
					</tr>
					<tr>
						<th style="color: white">개봉일</th>
						<td>${movie.movie_date}</td>
					</tr>
					<tr>
						<th style="color: white">평점</th>
						<td>${movie.movie_rat}</td>
					</tr>
					<tr>
						<th style="color: white">배우</th>
						<td>${movie.movie_act}</td>
					</tr>
					<tr>
						<th style="color: white">줄거리</th>
						<td>돈황이의 세계정복</td>
					</tr>
				</table>
			</div>
			<div class="card mb-4"></div>
		</div>
		<div class="row">
			<div class="col-md-4">예약하기</div>
			<div class="col-md-4"></div>
			<div class="col-md-4">돌아가기</div>
		</div>
	</div>
	<%@include file="bottom.jsp"%>

</body>

</html>
