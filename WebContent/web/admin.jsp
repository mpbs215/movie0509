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
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="css/contactstyle.css" type="text/css"
	media="all" />
<link rel="stylesheet" href="css/faqstyle.css" type="text/css"
	media="all" />
<link href="css/single.css" rel='stylesheet' type='text/css' />
<link href="css/medile.css" rel='stylesheet' type='text/css' />
<!-- banner-slider -->
<link href="css/jquery.slidey.min.css" rel="stylesheet">
<!-- //banner-slider -->
<!-- pop-up -->
<link href="css/popuo-box.css" rel="stylesheet" type="text/css"
	media="all" />
<!-- //pop-up -->
<!-- font-awesome icons -->
<link rel="stylesheet" href="css/font-awesome.min.css" />
<!-- //font-awesome icons -->
<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<!-- banner-bottom-plugin -->
<link href="css/owl.carousel.css" rel="stylesheet" type="text/css"
	media="all">
<script src="js/owl.carousel.js"></script>
 <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
 <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
			<script>
				$(function() {
					$("#tabs").tabs();
				});
			</script>

<!-- //banner-bottom-plugin -->
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
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
	<!-- header -->
	<div class="header">
		<div class="container">
			<div class="w3layouts_logo">
				<a href="index.html"><h1>
						One<span>Movies</span>
					</h1></a>
			</div>
			<div class="w3_search">
				<form action="#" method="post">
					<input type="text" name="Search" placeholder="제목 검색" required="">
					<input type="submit" value="검색">
				</form>
			</div>
			<div class="w3l_sign_in_register">
				<ul>
					<li><a href="#" data-toggle="modal" data-target="#myModal">Login</a></li>
				</ul>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- //header -->
	<!-- bootstrap-pop-up 로그인 팝업 -->
	<div class="modal video-modal fade" id="myModal" tabindex="-1"
		role="dialog" aria-labelledby="myModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					Sign In & Sign Up
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<section>
					<div class="modal-body">
						<div class="w3_login_module">
							<div class="module form-module">
								<div class="toggle">
									<i class="fa fa-times fa-pencil"></i>
									<div class="tooltip">회원가입</div>
								</div>
								<div class="form">
									<h3>회원 로그인</h3>
									<form action="#" method="post">
										<input type="text" name="Username" placeholder="아이디를 입력해주세요."
											required=""> <input type="password" name="Password"
											placeholder="암호를 입력하세요" required=""> <input
											type="submit" value="로그인">
									</form>
								</div>
								<div class="form">
									<h3>회원 가입</h3>
									<form action="#" method="post">
										<input type="text" name="Username" placeholder="아이디"
											required=""> <input type="password" name="Password"
											placeholder="패스워드" required=""> <input
											type="password" name="Password2" placeholder="패스워드 확인"
											required=""> <input type="email" name="Email"
											placeholder="메일 주소" required=""> <input type="text"
											name="Phone" placeholder="핸드폰 번호" required=""> <input
											type="submit" value="등록">
									</form>
								</div>
								<div class="cta">
									<a href="#">비밀번호를 잊어버리셨나요?</a>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>
		</div>
	</div>
	<script>
		$('.toggle').click(function() {
			// Switches the Icon
			$(this).children('i').toggleClass('fa-pencil');
			// Switches the forms  
			$('.form').animate({
				height : "toggle",
				'padding-top' : 'toggle',
				'padding-bottom' : 'toggle',
				opacity : "toggle"
			}, "slow");
		});
	</script>
	<!-- //bootstrap-pop-up 로그인 팝업-->
	<!-- 상단 메뉴 -->
	<div class="movies_nav">
		<div class="container">
			<nav class="navbar navbar-default">
				<div class="navbar-header navbar-left">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse navbar-right"
					id="bs-example-navbar-collapse-1">
					<nav>
						<ul class="nav navbar-nav">
							<li class="active"><a href="index.html">영화등록</a></li>
							<li><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">메인 슬라이드 관리</a></li>
							<li><a href="series.html">이벤트 페이지 관리</a></li>
						</ul>
					</nav>
				</div>
			</nav>
		</div>
	</div>
	<!-- //상단 메뉴 -->
	<!-- banner -->
	<script src="js/jquery.slidey.js"></script>
	<script src="js/jquery.dotdotdot.min.js"></script>
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