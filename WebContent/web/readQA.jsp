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

table {
	width: 90%;
}

table, th, tr, td {
	border: 1px solid gray;
	text-align: left;
	margin: 0 auto;
	background-color: black;
	color: white;
}

button {
	margin: 0 auto;
}

</style>
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
		
		$("input[type=button]").click(function(){
			
			if($(this).val()=="수정하기"){
				$(this).hide();
				$("#delbtn").val("저장하기");
				$("#qnatitle").text("Q&A 수정하기");
				$("#qnacontext").attr("readonly",false);
				}
			if($(this).val()=="삭제하기"){
				sendDelete();
			}
			if($(this).val()=="저장하기"){
				sendUpdate();
			}
		})
	});
	
	function sendDelete(){
		document.requestForm.command.value="deleteQA";
		document.requestForm.submit();
	}
	
	function sendUpdate(){
		document.requestForm.command.value="updateQA";
		document.requestForm.submit();
	}
	
</script>
</head>
<body>
	<%@include file="head.jsp"%>
	<div class="general">
		<div class="container">
			<div>
				<div class="col-md-12">
					<div class="panel ">
						<div class="panel-body text-center">
								<h2><b><span class="text-primary" id="qnatitle">Q&A 상세보기</span></b></h2>
							    <br />
							    <label for="usr"  style="float:left">제목</label>
							    <input type="text"  name="qnaTitle" class="form-control" id="qnatitle" readonly="readonly" value="${qna.qnaTitle}"/>
							    <br />
							   <form name="requestForm" method=post action="${pageContext.request.contextPath}/main" >
  								<label for="comment"  style="float:left">내용</label>
  								<br />
  								<textarea class="form-control" rows="20" name="context" id="qnacontext" readonly="readonly">${qna.context}</textarea>
  								<br />
  								<label for="usr"  style="float:left">비밀번호</label>
  								<br />
  								
  								<div><input type="password" class="form-control" id="usr" name="password"></div>
  								<br />
  								<input type=hidden name="qnaNo" value="${qna.qnaNo}"/>
  								<input type=hidden name="command" value=""/>
  								
  								<input type="button" id="delbtn" value="삭제하기"  class="pull-right btn-danger"/>
			                    <input type="button" value="목록으로" onClick="location.href='${pageContext.request.contextPath}/main?command=QA'" class="pull-left btn-success" />
			                    <input type="button" value="수정하기" class="pull-left btn-success" />
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