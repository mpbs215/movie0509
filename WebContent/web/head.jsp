<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
		<div class="header">
		<div class="container">
			<div class="w3layouts_logo">
				<a href="${pageContext.request.contextPath}/web/index.jsp"><h1>One<span>Movies</span></h1></a>
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
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //header -->
<!-- bootstrap-pop-up 로그인 팝업 -->
	<div class="modal video-modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					Sign In & Sign Up
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
				</div>
				<section>
					<div class="modal-body">
						<div class="w3_login_module">
							<div class="module form-module">
							  <div class="toggle"><i class="fa fa-times fa-pencil"></i>
								<div class="tooltip">회원가입</div>
							  </div>
							  <div class="form">
								<h3>회원 로그인</h3>
								<form action="${pageContext.request.contextPath}/main?command=login" method="post">
								  <input type="text" name="Username" placeholder="아이디를 입력해주세요." required="">
								  <input type="password" name="Password" placeholder="암호를 입력하세요" required="">
								  <input type="submit" value="로그인">
								</form>
							  </div>
							  <div class="form">
								<h3>회원 가입</h3>
								<form action="${pageContext.request.contextPath}/main?command=regist" method="post">
								  <input type="text" name="Username" placeholder="아이디" required="">
								  <input type="password" name="Password" placeholder="패스워드" required="">
								  <input type="password" name="Password2" placeholder="패스워드 확인" required="">
								  <input type="email" name="Email" placeholder="메일 주소" required="">
								  <input type="text" name="Phone" placeholder="핸드폰 번호" required="">
								  <input type="submit" value="등록">
								</form>
							  </div>
							  <div class="cta"><a href="#">비밀번호를 잊어버리셨나요?</a></div>
							</div>
						</div>
					</div>
				</section>
			</div>
		</div>
	</div>
	<script>
		$('.toggle').click(function(){
		  // Switches the Icon
		  $(this).children('i').toggleClass('fa-pencil');
		  // Switches the forms  
		  $('.form').animate({
			height: "toggle",
			'padding-top': 'toggle',
			'padding-bottom': 'toggle',
			opacity: "toggle"
		  }, "slow");
		});
	</script>
<!-- //bootstrap-pop-up 로그인 팝업-->
<!-- 상단 메뉴 -->
	<div class="movies_nav">
		<div class="container">
			<nav class="navbar navbar-default">
				<div class="navbar-header navbar-left">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
					<nav>
						<ul class="nav navbar-nav">
							<li><a href="${pageContext.request.contextPath}/main?command=main">Home</a></li>
							<li><a href="${pageContext.request.contextPath}/main?command=booking" >예매</a></li>
							<li><a href="${pageContext.request.contextPath}/main?command=info">영화 정보</a></li>
							<li><a href="${pageContext.request.contextPath}/main?command=event">이벤트</a></li>
							<li><a href="${pageContext.request.contextPath}/main?command=myPage">MyPage</a></li>
							<li><a href="${pageContext.request.contextPath}/main?command=QA">Q&A</a></li>
							<li><a href="${pageContext.request.contextPath}/main?command=faq">FAQ</a></li>
						</ul>
					</nav>
				</div>
			</nav>	
		</div>
	</div>