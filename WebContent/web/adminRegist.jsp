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

	function selectAll(){
		$.ajax({
			type:"post",//전송방식
				url: "${pageContext.request.contextPath}/admin?command=movieList", //서버주소
				dataType: "json",
				success: function(result){
					$("#movietabs tr:gt(0)").remove();
					$("#addscreentabs tr:gt(0)").remove();
 					var str="";
 					var str3="";
 					var theaterName="";
 					$.each(result,function(index,item){
 						$.each(item.tlist,function(index,item3){
 							theaterName += "<option value='"+item3.theaterName+"'>"+item3.theaterName+"</option>"
 						})
 						
 						$.each(item.list,function(index,item2){
							str+="<tr>";
							str+="<td>"+item2.movieNum+"</td>"
							str+="<td>"+item2.movieTitle+"</td>"
							str+="<td>"+item2.movieEtitle+"</td>"
							str+="<td>"+item2.movieDate+"</td>"
							str+="<td>"+item2.movieCountry+"</td>"
							str+="<td>"+item2.movieDir+"</td>"
							str+="<td>"+item2.movieState+"</td>"
							str+="<td>"+item2.moviePath+"</td>"
							str+="<td>"+item2.movieYoutube+"</td>"
							str+="<td><input type='button' value='삭제' name='"+item2.movieNum+"' id='delete'/></td>"
							str+="</tr>";
							
					
							str3+="<tr>";
							str3+="<td id='movieNum'>"+item2.movieNum+"</td>"
							str3+="<td>"+item2.movieTitle+"</td>"
							str3+="<td><input type='text' name='screenNum' /></td>"
							str3+="<td><select name='theaterName'>"+theaterName+"</select></td>"
							str3+="<td><input type='text' name='screenDate' class='datepick' /></td>"
							str3+="<td><input type='number' name='screenTime' /></td>"
							str3+="<td><input type='button' value='등록' id='newScreen'/></td>"
							str3+="</tr>";
 						}) 
					}) 
					$("#movietabs").append(str); 
 					$("#addscreentabs").append(str3);
 					
 					$('.datepick').each(function(){ $(this).datepicker({
 						 dateFormat: 'yy.mm.dd',
 						 prevText: '이전 달',
 						 nextText: '다음 달',
 						 monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
 					 	 monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
 					     dayNames: ['일','월','화','수','목','금','토'],
 					     dayNamesShort: ['일','월','화','수','목','금','토'],
 					     dayNamesMin: ['일','월','화','수','목','금','토'],
 					     showMonthAfterYear: true,
 						 changeMonth: true,
 				   	     changeYear: true,
 						 yearSuffix: '년'
 						})
 					})
				},
				
				error:function(err){
					console.log("에러 발생 : "+err);
				}
	  });
	}

	function screenAll(){
		$.ajax({
			type:"post",//전송방식
				url: "${pageContext.request.contextPath}/admin?command=screenList", //서버주소
				dataType: "json",
				success: function(result){
					$("#screentabs tr:gt(0)").remove();
 					var str="";
 					$.each(result,function(index,item){
							str+="<tr>";
							str+="<td>"+item.screenNum+"</td>"
							str+="<td>"+item.movieNum+"</td>"
							str+="<td>"+item.movieTitle+"</td>"
							str+="<td>"+item.theaterName+"</td>"
							str+="<td>"+item.screenDate+"</td>"
							str+="<td>"+item.screenTime+"</td>"
							str+="<td><input type='button' value='삭제' name='"+item.screenNum+"' id='delete2'/></td>"
							str+="</tr>";
					}) 
					$("#screentabs").append(str); 
				},
				
				error:function(err){
					console.log("에러 발생 : "+err);
				}
	  });
	}
	
 	$(function(){
		$(document).on("click",'#delete2',function(){
			$.ajax({
				type:"post",
				url:"${pageContext.request.contextPath}/admin?command=screendelete&screenNum="+$(this).attr("name"),
				success : function(result){
					screenAll()
				}
			})
			
		})
		$(document).on("click",'#delete',function(){
			$.ajax({
				type:"post",
				url:"${pageContext.request.contextPath}/admin?command=moviedelete&MovieNum="+$(this).attr("name"),
				success : function(result){
					selectAll()
					screenAll()
				}
			})
			
		})
  		$(document).on("click",'#newScreen',function(){
  			var movieNum=$(this).parent().parent().find("#movieNum").text();
  			var screenNum=$(this).parent().parent().find("input[name=screenNum]").val();
  			var theaterName=$(this).parent().parent().find("select[name=theaterName]").val();
  			var screenDate=$(this).parent().parent().find("input[name=screenDate]").val();
  			var screenTime=$(this).parent().parent().find("input[name=screenTime]").val();
 			
  			if(screenTime!=null & screenNum!=null &screenDate!=null & screenTime!="" & screenNum!="" &screenDate!=""){
	  			$.ajax({
					type:"post",
					url:"${pageContext.request.contextPath}/admin?command=screenInsert",
					data:"screenNum="+screenNum+"&movieNum="+movieNum+"&theaterName="+theaterName+"&screenDate="+screenDate+"&screenTime="+screenTime,				
					success : function(result){
						selectAll()
						screenAll()
					}
				}) 
  			}else{
  				alert("모든 값을 넣어주세요!");
  			}
		})
		

	})
	
	window.onload=selectAll()
	window.onload=screenAll()
	
	$("a").click(function(){
		alert("클릭")
		selectAll()
		screenAll()
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
									<li><a href="#tabs-3">현재 상영중 영화</a></li>
									<li><a href="#tabs-4">영화 상영 추가</a></li>
								</ul>
								<div id="tabs-1" style="overflow-x: auto">
									<%@include file="sample1.jsp"%>
								</div>
								<div id="tabs-2" style="overflow-x: auto">
										<table class="table table-hover table-fixed pre-scrollable"
											id="movietabs">
											<caption>
												<b>등록된 영화</b>
											</caption>
											<tr style="background-color: #FF8D1B;">
												<th style="color: white">영화번호</th>
												<th style="color: white">영화제목</th>
												<th style="color: white">영어제목</th>
												<th style="color: white">개봉일</th>
												<th style="color: white">국가</th>
												<th style="color: white">감독</th>
												<th style="color: white">개봉여부</th>
												<th style="color: white">이미지</th>
												<th style="color: white">영상</th>
												<th style="color: white">삭제</th>
											</tr>
										</table>
								</div>
								<div id="tabs-3" style="overflow-x: auto">
									<table class="table table-hover table-fixed pre-scrollable" id="screentabs">
											<caption>
												<b>상영 중인 영화</b>
											</caption>
											<tr style="background-color: #FF8D1B;">
												<th style="color: white">상영번호</th>
												<th style="color: white">영화번호</th>
												<th style="color: white">영화제목</th>
												<th style="color: white">상영관이름</th>
												<th style="color: white">상영날짜</th>
												<th style="color: white">상영시간</th>
												<th style="color: white">취소</th>
											</tr>
										</table>
								</div>
								<div id="tabs-4" style="overflow-x: auto">
									<table class="table table-hover table-fixed pre-scrollable" id="addscreentabs">
											<caption>
												<b>영화 상영 추가하기</b>
											</caption>
											<tr style="background-color: #FF8D1B;">
												<th style="color: white">영화번호</th>
												<th style="color: white">영화제목</th>
												<th style="color: white">상영번호</th>
												<th style="color: white">상영관이름</th>
												<th style="color: white">상영날짜</th>
												<th style="color: white">상영시간</th>
												<th style="color: white">등록</th>
											</tr>
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