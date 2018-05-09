<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<title>W3.CSS</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
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
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="${pageContext.request.contextPath}/web/js/owl.carousel.js"></script>
<style>
.w3-theme {
	color: #fff !important;
	background-color: #4CAF50 !important
}

.w3-btn {
	background-color: #4CAF50;
	margin-bottom: 4px
}

.w3-code {
	border-left: 4px solid #4CAF50
}

.myMenu {
	margin-bottom: 150px
}
table{
	width:90%;
}
table,th,tr,td{
	border:1px solid gray;
	text-align: center;
	margin: 0 auto;
	background-color: black;
	color: white;
}

button{
	margin: 0 auto;
}

</style>
<body>
	<%@include file="head.jsp"%>


	<script>
		$(function() {
			$("#tabs").tabs();
		});
	</script>
<div id="tabs">
	<ul>
		<li><a href="#tabs-1">회원 정보 수정</a></li>
		<li><a href="#tabs-2">예매확인 및 취소</a></li>
	</ul>
	<div id="tabs-1">
		<div class="w3-panel w3-padding-large w3-card-4 w3-light-grey">
			<p class="w3-large">
			<p>
			<div class="w3-code cssHigh notranslate">

				<article class="container">
					<div class="col-md-12">
						<div class="page-header">
							<h1>회원 정보 수정</h1>
						</div>
						<form class="form-horizontal">
							<div class="form-group">
								<label class="col-sm-3 control-label" for="inputnID">아이디</label>
								<div class="col-sm-6">
									<input class="form-control" id="inputnID" type="text"
										readonly="readonly">
									<p class="help-block">수정할 수 없습니다.</p>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label" for="inputPassword">비밀번호</label>
								<div class="col-sm-6">
									<input class="form-control" id="inputPassword" type="password"
										placeholder="비밀번호">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label" for="inputPasswordCheck">비밀번호
									확인</label>
								<div class="col-sm-6">
									<input class="form-control" id="inputPasswordCheck"
										type="password" placeholder="비밀번호 확인">
									<p class="help-block">비밀번호를 한번 더 입력해주세요.</p>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label" for="inputName">이름</label>
								<div class="col-sm-6">
									<input class="form-control" id="inputName" type="text"
										placeholder="이름">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label" for="inputEmail">이메일</label>
								<div class="col-sm-6">
									<input class="form-control" id="inputEmail" type="email"
										placeholder="이메일">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label" for="inputNumber">휴대폰번호</label>
								<div class="col-sm-6">
									<input type="tel" class="form-control" id="inputNumber"
										placeholder="- 없이 입력해 주세요" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label" for="inputJoin">가입날짜</label>
								<div class="col-sm-6">
									<input type="text" class="form-control" id="inputJoin"
										readonly="readonly" />
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-12 text-center">
									<button class="btn btn-primary" type="submit">
										회원수정<i class="fa fa-check spaceLeft"></i>
									</button>
									<button class="btn btn-danger" type="reset">
										취 소<i class="fa fa-times spaceLeft"></i>
									</button>
								</div>
							</div>
						</form>
						<hr>
					</div>
				</article>
			</div>
		</div>
	</div>
	<div id="tabs-2">
		<!-- 예매확인 페이지 -->
		<div class="w3-panel w3-padding-large w3-card-4 w3-light-grey">
			<p class="w3-large">
			<p>
			<div class="w3-code cssHigh notranslate">

				<article class="container">
					<div class="col-md-12">
						<div class="page-header">
							<h1>현재 예매한 영화</h1>
						</div>
						<div class="row" style="text-align: center;">
						  <div class="w3-col s4 w3-center" style="height:800">
						  	<img src="${pageContext.request.contextPath}/web/2.jpg" alt="" style="width:90%;height:50%;"/>
						  	<table>
						  		<tr>
						  			<th style="width:40%;">제목</th>
						  			<th>아가씨</th>
						  		</tr>
						  		<tr>
						  			<th style="width:40%;">예매날짜</th>
						  			<th>2018-05-04</th>
						  		</tr>
						  		<tr>
						  			<th>예매시간</th>
						  			<th>19:00</th>
						  		</tr>
						  		<tr>
						  			<th>상영관</th>
						  			<th>1관</th>
						  		</tr>
						  	</table>
						  	
						  	<p></p>
							<button class="w3-button w3-block w3-red" style="width:90%">취소하기</button>
						  </div>
						  <div class="w3-col s4 w3-center" style="height:800">
						  	<img src="${pageContext.request.contextPath}/web/3.jpg" alt="" style="width:90%;height:50%;"/>
						  	<table>
						    	<tr>
						  			<th style="width:40%;">제목</th>
						  			<th>아가씨</th>
						  		</tr>
						  		<tr>
						  			<th>예매날짜</th>
						  			<th>2018-05-04</th>
						  		</tr>
						  		<tr>
						  			<th>예매시간</th>
						  			<th>19:00</th>
						  		</tr>
						  		<tr>
						  			<th>상영관</th>
						  			<th>1관</th>
						  		</tr>
						  	</table>
						  	<button class="w3-button w3-block w3-red" style="width:90%">취소하기</button>
						  </div>
						  <div class="w3-col s4 w3-center" style="height:800">
						  	<img src="${pageContext.request.contextPath}/web/4.jpg" alt="" style="width:90%;height:50%;"/>
						  	<table>
						  		<tr>
						  			<th style="width:40%;">제목</th>
						  			<th>아가씨</th>
						  		</tr>
						  		<tr>
						  			<th>예매날짜</th>
						  			<th>2018-05-04</th>
						  		</tr>
						  		<tr>
						  			<th>예매시간</th>
						  			<th>19:00</th>
						  		</tr>
						  		<tr>
						  			<th>상영관</th>
						  			<th>1관</th>
						  		</tr>
						  	</table>
						  	<button class="w3-button w3-block w3-red" style="width:90%">취소하기</button>
						  </div>
						    <div class="w3-col s4 w3-center" style="height:800">
						  	<img src="${pageContext.request.contextPath}/web/4.jpg" alt="" style="width:90%;height:50%;"/>
						  	<table>
						  		<tr>
						  			<th style="width:40%;">제목</th>
						  			<th>아가씨</th>
						  		</tr>
						  		<tr>
						  			<th>예매날짜</th>
						  			<th>2018-05-04</th>
						  		</tr>
						  		<tr>
						  			<th>예매시간</th>
						  			<th>19:00</th>
						  		</tr>
						  		<tr>
						  			<th>상영관</th>
						  			<th>1관</th>
						  		</tr>
						  	</table>
						  	<button class="w3-button w3-block w3-red" style="width:90%">취소하기</button>
						  </div>
						</div>
						<hr>
					</div>
				</article>
			</div>
		</div>
		
	</div>
</div>

		<!-- END MAIN -->
	<%@include file="bottom.jsp"%>

	<script>
		// Script to open and close the sidebar
		function w3_open() {
			document.getElementById("mySidebar").style.display = "block";
			document.getElementById("myOverlay").style.display = "block";
		}

		function w3_close() {
			document.getElementById("mySidebar").style.display = "none";
			document.getElementById("myOverlay").style.display = "none";
		}
	</script>
	<script src="https://www.w3schools.com/lib/w3codecolor.js"></script>
	<script>
		w3CodeColor();
	</script>
</body>
</html>