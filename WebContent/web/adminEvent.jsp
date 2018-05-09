<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="en">
<head>
<title>무비 원</title>
<meta charset="utf-8">
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="One Movies Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
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
<link href="${pageContext.request.contextPath}/web/css/owl.carousel.css" rel="stylesheet" type="text/css"
	media="all">
<script src="${pageContext.request.contextPath}/web/js/owl.carousel.js"></script>
 <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
 <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
			<script>
				$(function() {
					$("#tabs").tabs();
				});
			</script>

<!-- //banner-bottom-plugin -->
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
<style>
th {
	text-align: center;
}

table {
	border: 1px solid gray;
}

input[type=file] {
	opacity: 0;
}
</style>
<!-- start-smoth-scrolling -->
</head>

<body>
	<%@include file = "adminHead.jsp" %>
	<script src="${pageContext.request.contextPath}/web/js/jquery.slidey.js"></script>
	<script src="${pageContext.request.contextPath}/web/js/jquery.dotdotdot.min.js"></script>
	<script type="text/javascript">
		$("#slidey").slidey({
			interval : 8000,
			listCount : 5,
			autoplay : false,
			showList : true
		});
		$(".slidey-list-description").dotdotdot();
	</script>
	<!-- //banner -->
	<div class="general">
		<h4 class="latest-text w3_latest_text">영화 리스트</h4>
		<div class="container">
			<div>
				<div class="col-md-12">
					<div class="panel ">
						<div class="panel-body text-center">
							<div id="tabs">
							  <ul>
							    <li><a href="#tabs-1">영화 등록하기</a></li>
							    <li><a href="#tabs-2">현재 등록된 영화</a></li>
							  </ul>
							  	<div id="tabs-1">
								<table class="table table-hover">
									<caption>
										<b>등록 가능 영화 리스트</b>
									</caption>
									<thead>
										<tr>
											<th>영화번호</th>
											<th>영화제목</th>
											<th>영어제목</th>
											<th>감독</th>
											<th>배우</th>
											<th>개봉일</th>
											<th>평점</th>
											<th>이미지</th>
											<th>상영관</th>
											<th>상영시간</th>
											<th>등록</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td contenteditable="true">1</td>
											<td contenteditable="true">인피니티 워</td>
											<td contenteditable="true">infinite war</td>
											<td contenteditable="true">김돈황</td>
											<td contenteditable="true">이재문</td>
											<td contenteditable="true">2018/05/04</td>
											<td contenteditable="true">4.5</td>
											<td><input type="file" name="" id="" value="찾기" /></td>
											<td><select name="" id=""></select></td>
											<td><select name="" id=""></select></td>
											<td><input type="button" value="등록" /></td>
										</tr>
									</tbody>
								</table>
								</div>
								<div id="tabs-2">
								<table class="table table-hover">
									<caption>
										<b>상영 중인 영화</b>
									</caption>
									<thead>
										<tr>
											<th>영화번호</th>
											<th>영화제목</th>
											<th>영어제목</th>
											<th>감독</th>
											<th>배우</th>
											<th>개봉일</th>
											<th>평점</th>
											<th>이미지</th>
											<th>상영관</th>
											<th>상영시간</th>
											<th>삭제</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td contenteditable="true">1</td>
											<td contenteditable="true">인피니티 워</td>
											<td contenteditable="true">infinite war</td>
											<td contenteditable="true">김돈황</td>
											<td contenteditable="true">이재문</td>
											<td contenteditable="true">2018/05/04</td>
											<td contenteditable="true">4.5</td>
											<td><input type="file" name="" id="" value="찾기" /></td>
											<td><select name="" id=""></select></td>
											<td><select name="" id=""></select></td>
											<td><input type="button" value="삭제" /></td>
										</tr>
									</tbody>
								</table>
								</div>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
		<%@include file="bottom.jsp"%>
</body>
</html>