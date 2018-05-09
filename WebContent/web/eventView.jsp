<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
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
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="${pageContext.request.contextPath}/web/js/owl.carousel.js"></script>

<!--실제 슬라이드 효과 적용란-->
<script>
	$(document).ready(function() {
		$("#owl-demo").owlCarousel({

			autoPlay : 3000, //슬라이드 전환 시간

			items : 5,
			itemsDesktop : [ 640, 4 ],
			itemsDesktopSmall : [ 414, 3 ]

		});

	});
</script>
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
</head>
<jsp:include page="head.jsp"></jsp:include>
<div class="general">
	<h4 class="latest-text w3_latest_text">이벤트 리스트</h4>
	<div class="container">
		<div>
			<div class="col-md-12">
				<div class="panel ">
					<div class="panel-body text-center">
							<div class="row"><img src="${pageContext.request.contextPath}/web/1.jpg"  class="img-responsive"  style="width: 100%"/></div>
							<hr />
							<div class="row"><img src="${pageContext.request.contextPath}/web/2.jpg"  class="img-responsive" style="width: 100%"></div>
							<hr />
							<div class="row"><img src="${pageContext.request.contextPath}/web/3.jpg"  class="img-responsive" style="width: 100%" /></div>
							<hr />
							<div class="row"><img src="${pageContext.request.contextPath}/web/4.jpg"  class="img-responsive" style="width: 100%"/></div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<jsp:include page="bottom.jsp"></jsp:include>
<body>
</body>
</html>