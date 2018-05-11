<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<link href="${pageContext.request.contextPath}/web/css/bootstrap.css"
	rel="stylesheet" type="text/css" media="all" />
<link href="${pageContext.request.contextPath}/web/css/style.css"
	rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/web/css/contactstyle.css"
	type="text/css" media="all" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/web/css/faqstyle.css"
	type="text/css" media="all" />
<link href="${pageContext.request.contextPath}/web/css/single.css"
	rel='stylesheet' type='text/css' />
<link href="${pageContext.request.contextPath}/web/css/medile.css"
	rel='stylesheet' type='text/css' />
<!-- banner-slider -->
<link
	href="${pageContext.request.contextPath}/web/css/jquery.slidey.min.css"
	rel="stylesheet">
<!-- //banner-slider -->
<!-- pop-up -->
<link href="${pageContext.request.contextPath}/web/css/popuo-box.css"
	rel="stylesheet" type="text/css" media="all" />
<!-- //pop-up -->
<!-- font-awesome icons -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/web/css/font-awesome.min.css" />
<!-- //font-awesome icons -->
<!-- js -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/web/js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<!-- banner-bottom-plugin -->
<link href="${pageContext.request.contextPath}/web/css/owl.carousel.css"
	rel="stylesheet" type="text/css" media="all">
<script src="${pageContext.request.contextPath}/web/js/owl.carousel.js"></script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	$(function() {
		$("#tabs").tabs();
	});
</script>

<!-- //banner-bottom-plugin -->
<!-- start-smoth-scrolling -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/web/js/move-top.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/web/js/easing.js"></script>
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
th, td {
	text-align: center;
	white-space: nowrap
}

th>span{
	color: black;
}

table {
	border: 1px solid gray;
}

div {
	overflow-x: auto;
}

.table-fixed {
	overflow-x: auto;
}

.form-control {
	width: 30%;
}

/* input[type=file] {
	opacity: 0;
} */
</style>
<!-- start-smoth-scrolling -->
</head>

<script>
function theaterList(){
	$.ajax({
		type:"post",//전송방식
			url: "${pageContext.request.contextPath}/admin?command=theaterList", //서버주소
			dataType: "json",
			success: function(result){
				$("#theaterList tr:gt(0)").remove();
					var str="";
					$.each(result,function(index,item){
						str+="<tr>";
						str+="<td>"+item.theaterName+"</td>"
						str+="<td>"+item.theaterTotal+"</td>"
						str+="<td><input type='button' value='삭제' name='"+item.theaterName+"' id='delete'/></td>"
						str+="</tr>";
				}) 
				$("#theaterList").append(str); 
			},
			
			error:function(err){
				console.log("에러 발생 : "+err);
			}
	});
}

$(function(){
	theaterList()
	$(document).on("click",'#delete',function(){
		$.ajax({
			type:"post",
			url:"${pageContext.request.contextPath}/admin?command=theaterDelete&theaterName="+$(this).attr("name"),
			success : function(result){
				theaterList()
			}
		})
		
	})
})

</script>

<body>
	<%@include file="adminHead.jsp"%>
	<script
		src="${pageContext.request.contextPath}/web/js/jquery.slidey.js"></script>
	<script
		src="${pageContext.request.contextPath}/web/js/jquery.dotdotdot.min.js"></script>
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
		<h4 class="latest-text w3_latest_text">상영관 리스트</h4>
		<div class="container">
			<div>
				<div class="col-md-12">
					<div class="panel ">
						<div class="panel-body text-center">
							<table class="table table-hover table-fixed pre-scrollable" id="theaterList">
							<caption>
								<b>상영관 리스트</b>
							</caption>
									<tr style="background-color: #FF8D1B;">
										<th style="color: white">이벤트명</th>
										<th style="color: white">게시일</th>
										<th style="color: white">삭제</th>
									</tr>
									<tr>
										<td>김돈황이벤트</td>
										<td>2017/05/05</td>
										<td><input type="button" value="삭제" /> </td>										
									</tr>
							</table>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
	<%@include file="bottom.jsp"%>
</body>
</html>