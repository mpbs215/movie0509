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

		<div class="col-sm-8 single-left">

			<div class="col-md-12">

				<div class="card mb-4">
					<div class="video-grid-single-page-agileits">
						<div data-video="${movie.movieYoutube}" id="video">
							<img src="${movie.moviePath}" alt="" class="img-responsive" />
						</div>
					</div>
				</div>
				<table class="table">
					<tr>
						<th style="color: white;">영화제목</th>
						<td>${movie.movieTitle}</td>
					</tr>
					<tr>
						<th style="color: white">감독</th>
						<td>${movie.movieDir}</td>
					</tr>
					<tr>
						<th style="color: white">개봉일</th>
						<td>${movie.movieDate}</td>
					</tr>
					<tr>
						<th style="color: white">제작국가</th>
						<td>${movie.movieCountry}</td>
					</tr>
					<tr>
						<th style="color: white">영화상태</th>
						<td>${movie.movieState}</td>
					</tr>
					
				</table>
			</div>
			<div class="row">
		<div	class="w3l-movie-text" align="center" >
										<button type="button" class="btn btn-info btn-block outline" onclick="location.href='${pageContext.request.contextPath}/main?command=booking&bookingNum=8&movieNum=${movie.movieNum}'">예매하기</button>
									</div>
<!-- 			<div class="col-md-4"> -->
			
<!-- 									</div> -->
<!-- 			<div class="col-md-4"></div> -->
<!-- 			<div class="col-md-4">돌아가기</div> -->
		</div>
			<div class="card mb-4"></div>
		</div>
		<div class="col-md-4 single-right">
					<h3>Up Next</h3>
					<div class="single-grid-right">
						
						<c:forEach items="${movielist}" var="movielist">
						
						<div class="single-right-grids">
							<div class="col-md-4 single-right-grid-left">
								<a href="${pageContext.request.contextPath}/main?command=detail&movieNum=${movielist.movieNum}"><img src="${movielist.moviePath}" alt="" /></a>
							</div>
							<div class="col-md-8 single-right-grid-right">
								<a href="${pageContext.request.contextPath}/main?command=detail&movieNum=${movielist.movieNum}" class="title"> ${movielist.movieTitle}</a>
								<p class="author">${movielist.movieDir}</p>
								<p class="views">${movielist.movieCountry}</p>
							</div>
							<div class="clearfix"> </div>
						</div>
						
						</c:forEach>
						
						
						
						
						
						
						

					</div>
				</div>
	</div>
	<%@include file="bottom.jsp"%>

</body>

</html>
