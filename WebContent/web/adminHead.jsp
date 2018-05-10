<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="header">
	<div class="container">
		<div class="w3layouts_logo">
			<a href="${pageContext.request.contextPath}/web/adminRegist.jsp"><h1>
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
			<li><input type ="text" id="conid" readonly="readonly" style="border: 0px"/></li>
				<li><a href="#" id="logbtn" >LogOut</a>   <a href="#" id="move" >UserPage로 이동</a></li>

			</ul>
		</div>
		<div class="clearfix"></div>
	</div>
</div>
<script>
	$(function(){
		var str ="<%=(String)session.getAttribute("userid")%>";
		$("#conid").val("<%=(String)session.getAttribute("userid")%>님 접속중")
		
		$("#move").click(function(){
			location.href="${pageContext.request.contextPath}/web/index.jsp";
		})
		
		$("#logbtn").click(function(){
			if(confirm("로그아웃 하시겠습니까?????")){
			location.href="${pageContext.request.contextPath}/main?command=loginout";}
		})
	
	})

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
						<li><a href="${pageContext.request.contextPath}/web/adminRegist.jsp">영화관리</a></li>
						<li><a href="${pageContext.request.contextPath}/web/adminTheater.jsp">영화관관리</a></li>
						<li><a href="${pageContext.request.contextPath}/web/adminTheater.jsp">이벤트관리</a></li>
						
					</ul>
				</nav>
			</div>
		</nav>
	</div>
</div>