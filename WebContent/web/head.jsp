<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
		<div class="header">
		<div class="container">
			<div class="w3layouts_logo">
				<a href="${pageContext.request.contextPath}/main?command=main"><h1>RD<span>Movies</span></h1></a>
			</div>
			<div class="w3_search">
				<form action="#" method="post">
					
				</form>
			</div>
			<div class="w3l_sign_in_register">
				<ul>
				<li><input type ="text" id="conid" readonly="readonly" style="border: 0px"/></li>
					<li><a href="#" data-toggle="modal" data-target="#myModal" id="logbtn" >Login</a></li>
				</ul>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //header -->
<!-- bootstrap-pop-up 로그인 팝업 -->
<% 
if((String)session.getAttribute("userid")==null){
%>
<script>

</script>
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
								  <input type="text" id="id" name="Username" placeholder="아이디" required/>
								  <span id = "chkMsg"></span> 
								  <input type="password" id = "pwd"name="Password" placeholder="패스워드" required>
								  <input type="password" id = "pwdCheck" name="Password2" placeholder="패스워드 확인" required>
								  <span id = "chkPwdMsg"></span> 
								  <input type="email" name="Email" placeholder="메일 주소" required>
								  <input type="text" name="Phone" placeholder="핸드폰 번호" required>
								  <input type="submit" value="등록">
								</form>
							  </div>
							</div>
						</div>
					</div>
				</section>
			</div>
		</div>
	</div>
	<script>
	
	//아이디 중복체크하기
	$("#id").focusout(function(){
		$.ajax({
 				type:"post", //전송방식
 				url :"../main?command=idDuplChk",//서버주소(데베를 가져옴으로 servlet)
 				data:"id="+$(this).val(),//서버에게 보낼 parameter정보
 				dataType :"text",
 				success:function(result){//개수|단어,단어,단어, ....
 					$("#chkMsg").text(result);
 				},
 				error : function(err){
 					console.log("에러발생:"+err);
 				}
 			});//ajax
	});//idcheck;
	
	$("#id").focusin(function(){
		$("#chkMsg").text("")
	});//idcheck;
	
	$("#id").focusout(function(){
		$.ajax({
 				type:"post", //전송방식
 				url :"${pageContext.request.contextPath}/main?command=idDuplChk",//서버주소(데베를 가져옴으로 servlet)
 				data:"id="+$(this).val(),//서버에게 보낼 parameter정보
 				dataType :"text",
 				success:function(result){//개수|단어,단어,단어, ....
 					$("#chkMsg").text(result);
 				},
 				error : function(err){
 					console.log("에러발생:"+err);
 				}
 			});//ajax
	});//idcheck;
	
	$("#id").focusin(function(){
		$("#chkMsg").text("")
	});//idcheck;
	
	
	$("#pwdCheck").focusout(function(){
		if($("#pwd").val()!=$(this).val()){
			$("#chkPwdMsg").text("패스워드가 같지 않습니다.")
		}
		});//pwcheck;

	$("#pwdCheck").focusin(function(){
		$("#chkPwdMsg").text("")
	});//pwcheck;

	
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
<%
}else{ //session id값이 있을때.%>
	<script>
	$(function(){
		$("#logbtn").text("LogOut");
		var str ="<%=(String)session.getAttribute("userid")%>";
		
		$("#conid").val("<%=(String)session.getAttribute("userid")%>님 접속중")
	})
	</script>
	
<%} %>
<script type="text/javascript">
$(function(){
	$("#logbtn").click(function(){
		if($(this).text() =="LogOut"){
			if(confirm("로그아웃 하시겠습니까?????")){
			location.href="${pageContext.request.contextPath}/main?command=loginout";}
		}
	})
})
</script>

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
							<li><a href="${pageContext.request.contextPath}/main?command=booking&bookingNum=8" >예매</a></li>
							<li><a href="${pageContext.request.contextPath}/main?command=info">영화 정보</a></li>
							<li><a href="${pageContext.request.contextPath}/main?command=myPage">MyPage</a></li>
							<li><a href="${pageContext.request.contextPath}/main?command=QA">Q&A</a></li>
							<li><a href="${pageContext.request.contextPath}/main?command=faq">영화관 이용안내</a></li>
						</ul>
					</nav>
				</div>
			</nav>	
		</div>
	</div>