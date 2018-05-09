<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="${pageContext.request.contextPath}/web/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="${pageContext.request.contextPath}/web/css/style.css" rel="stylesheet" type="text/css" media="all" />
<link rel="${pageContext.request.contextPath}/web/stylesheet" href="css/faqstyle.css" type="text/css" media="all" />
<link href="${pageContext.request.contextPath}/web/css/medile.css" rel='stylesheet' type='text/css' />
<link href="${pageContext.request.contextPath}/web/css/single.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="${pageContext.request.contextPath}/web/css/contactstyle.css" type="text/css" media="all" />
<!-- news-css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/web/news-css/news.css" type="text/css" media="all" />
<!-- //news-css -->
<!-- list-css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/web/list-css/list.css" type="text/css" media="all" />
<!-- //list-css -->
<!-- font-awesome icons -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/web/css/font-awesome.min.css" />
<!-- //font-awesome icons -->
<!-- js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/web/js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,700italic,700,400italic,300italic,300' rel='stylesheet' type='text/css'>
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="${pageContext.request.contextPath}/web/js/move-top.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/web/js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
</head>
<%@include file="head.jsp" %>
<body>
	
	<!--  faq -->
	<div class="faq">
		<h4 class="latest-text w3_faq_latest_text w3_latest_text">FAQ</h4>
		</div>
							
							<!-- 사진 -->
							<div>
							<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" style="padding:35px 0 0px 0;">
							  <tr>
							    <td align="center"> <img src="images/sub_banner.png"></td>
							  </tr>
							</table>
							</div>
							
							<!-- 공백 -->				
							<div>
							<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" >
							  <tr>
							    <td style="height: 50px"></td>
							  </tr>
							</table>
							</div>
							
			<!-- 자동차 극장 소개 -->
			<div class="container">
				<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" style="padding:35px 0 0px 0;">
					<tr>
					 <td align="left"><h1 class="content-title">극장소개</h1></td>
					</tr>
					<tr>
					<td align="left">
					<div class="history_txt">
					<p>오붓하고 편안한 우리들만의 영화관 </p>
					<p></p>
					</div>
					</tr>
				</table>	
			</div>
			
			<!-- 공백 -->				
			<div>
			<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" >
			  <tr>
			    <td style="height: 50px"></td>
			  </tr>
			</table>
			</div>
							
							
			<!-- 이용안내 -->
			<div class="container" >
				<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" style="padding:35px 0 0px 0;">
					<tr>
					 <td align="left"><h3 class="content-subtitle">이용안내</h3></td>
					</tr>
				</table>	
			</div>
			
			<!-- 공백 -->				
			<div>
			<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" >
			  <tr>
			    <td style="height: 20px"></td>
			  </tr>
			</table>
			</div>
			
			<!-- accordion -->	
			<div class="container">
				<div class="panel-group w3l_panel_group_faq" id="accordion" role="tablist" aria-multiselectable="true">

				    <div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingOne">
					  <h4 class="panel-title asd">
						<a class="pa_italic" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
						  <span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i class="glyphicon glyphicon-minus" aria-hidden="true"></i>관람중 특별 주의사항
						</a>
					  </h4>
					</div>
					<div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
					  <div class="panel-body panel_text" style="color:red;">
					   1.브레이크 폐달에 발을 올려놓지 마세요<br>
					   2.에어컨이나 히터 열선 등을 작동시킬때에는 방전이 되지 않도록 반드시 중간중간 시동을 걸어 가면서 사용해주세요
					  </div>
					</div>
				  </div>
				  
				  <div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingTwo">
					  <h4 class="panel-title asd">
						<a class="pa_italic collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
						  <span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i class="glyphicon glyphicon-minus" aria-hidden="true"></i>상영프로 및 시간표 확인
						</a>
					  </h4>
					</div>
					<div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
					   <div class="panel-body panel_text">
					    관람당일, 상영프로와 시간표를 홈페이지나 대표 전화를 통해 꼭!! 확인하세요
					  </div>
					</div>
				  </div>
				  
				  <div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingThree">
					  <h4 class="panel-title asd">
						<a class="pa_italic collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
						  <span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i class="glyphicon glyphicon-minus" aria-hidden="true"></i>관람요금 안내
						</a>
					  </h4>
					</div>
					<div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
					   <div class="panel-body panel_text">
					   관람요금은 차량 1대당 20.000(정상가)입니다.<br>
					   장애인, 국가유공자 :150,000원
					  </div>
					</div>
				  </div>
				  
				  <div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingFour">
					  <h4 class="panel-title asd">
						<a class="pa_italic collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
						  <span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i class="glyphicon glyphicon-minus" aria-hidden="true"></i>입장방법
						</a>
					  </h4>
					</div>
					<div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
					   <div class="panel-body panel_text">
					    발권후 상영관으로 이동시 안내요원의 요구에 응해주셔야 합니다<br>
					    자동차 극장은 소형은 앞자리, 차높이가 높은 RV차량은 반드시 뒤쪽에 주차 해야합니다.<br>
					   (먼저 왔다고 해서 앞자리가 배정되는것은 아닙니다. 반드시. 안내요원의 요구에 따라주셔야 합니다.)
					  </div>
					</div>
				  </div>
				  
				   <div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingFive">
					  <h4 class="panel-title asd">
						<a class="pa_italic collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
						  <span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i class="glyphicon glyphicon-minus" aria-hidden="true"></i>관람시 주의사항
						</a>
					  </h4>
					</div>
					<div id="collapseFive" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFive">
					   <div class="panel-body panel_text">
					   데이라이트(주간전조등, 주간주행등) 설정차량은 매표소 입장 전 미리 조치후, 관람이 가능합니다<br>
					   (당 극장에서는 가림막과 테이프만 제공하오니 본인이 직접 탈부착 하셔야 합니다)
					  </div>
					</div>
				  </div>
				  
				   <div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingSix">
					  <h4 class="panel-title asd">
						<a class="pa_italic collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseSix" aria-expanded="false" aria-controls="collapseSix">
						  <span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i class="glyphicon glyphicon-minus" aria-hidden="true"></i>관람안내
						</a>
					  </h4>
					</div>
					<div id="collapseSix" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingSix">
					   <div class="panel-body panel_text">
					   자동차내 FM라디오에 안내받은 주파수를 맞추어 음향 청취바랍니다 
					  </div>
					</div>
				  </div>
				  
				  </div>
				</div>
			</div>
	</div><!--div class="faq"-->
	

	
	<!-- 오시는길 -->
			<div class="container" >
				<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" style="padding:35px 0 0px 0;">
					<tr>
					 <td align="left"><h3 class="content-subtitle">오시는길</h3></td>
					</tr>
				</table>	
			</div>
			
			<!-- 공백 -->				
			<div>
			<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" >
			  <tr>
			    <td style="height: 20px"></td>
			  </tr>
			</table>
			</div>
			
			<!-- accordion -->	
			<div class="container">
				<div class="panel-group w3l_panel_group_faq" id="accordion" role="tablist" aria-multiselectable="true">
				
				 <div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingSeven">
					  <h4 class="panel-title asd">
						<a class="pa_italic collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseSeven" aria-expanded="false" aria-controls="collapseSeven">
						  <span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i class="glyphicon glyphicon-minus" aria-hidden="true"></i>주소 및 전화번호
						</a>
					  </h4>
					</div>
					<div id="collapseSeven" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingSeven">
					   <div class="panel-body panel_text">

					   주소: 경기 용인시 기흥구 보라동 308-1<br>
					   대표전화: 031-284-1098<br>
					   
					  </div>
					</div>
				  </div>
				   
				    <div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingEight">
					  <h4 class="panel-title asd">
						<a class="pa_italic collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseEight" aria-expanded="false" aria-controls="collapseEight">
						  <span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i class="glyphicon glyphicon-minus" aria-hidden="true"></i>오시는길 지도 API
						</a>
					  </h4>
					</div>
					<div id="collapseEight" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingEight">
					   <div class="panel-body panel_text">
					   지도 API
					  </div>
					</div>
				  </div>
				  
				   
				  </div>
				</div>
			</div>
	</div><!--오시는길-->
	
			
	
	<!-- 개인문의하기 -->
	<div class="container">
	<h3 class="content-subtitle">문의하기</h3>
		<!-- 공백 -->				
			<div>
			<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" >
			  <tr>
			    <td style="height: 20px"></td>
			  </tr>
			</table>
			</div>
			
		<a href="QAboard.jsp" class="button">개인 문의하기</a>
		
			<!-- 공백 -->				
			<div>
			<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" >
			  <tr>
			    <td style="height: 80px"></td>
			  </tr>
			</table>
			</div>
	</div>
	
	<%@include file="bottom.jsp" %>
	<script src="${pageContext.request.contextPath}/web/js/bootstrap.min.js"></script>
<script>
$(document).ready(function(){
    $(".dropdown").hover(            
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideDown("fast");
            $(this).toggleClass('open');        
        },
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideUp("fast");
            $(this).toggleClass('open');       
        }
    );
});
</script>
<!-- //Bootstrap Core JavaScript -->
<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
	<div>
	</div>
</body>
</html>