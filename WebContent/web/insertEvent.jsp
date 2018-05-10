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
	<div class="general">
		<div class="container">
			<div>
				<div class="col-md-12">
					<div class="panel ">
						<div class="panel-body text-center">
								<h2><b><span class="text-primary">이벤트 등록</span></b></h2>
							    <br />
							    <form name="insertEvent" method="post" action="../main?command=insertEvent" 
  															onSubmit='return checkValid()'>
							    <label for="usr"  style="float:left">제목</label>
  								<div><input type="text" class="form-control" id="usr" placeholder="제목을 입력하세요."></div>
  								<br />
  								<label for="comment"  style="float:left">내용</label>
  								<textarea class="form-control" rows="20" id="comment" placeholder="내용을 입력하세요."></textarea>
  								<br />
  								 <input type="submit" value="등록하기" onclick="sendData()" class="pull-right btn-success"/>
			                    <input type="button" value="취소하기" class="pull-left btn-danger"  onclick="location.href='${pageContext.request.contextPath}/web/adminEvent.jsp'"/>
								</form>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
	<%@include file="bottom.jsp"%>
</body>
</html>