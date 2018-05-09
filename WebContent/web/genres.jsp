<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="${pageContext.request.contextPath}/web/js/owl.carousel.js"></script>
<script type="text/javascript">
</script>
</head>
<body>
	<%@include file="head.jsp"%>
	<div class="general-agileits-w3l">
		<div class="w3l-medile-movies-grids">

			<!-- /movie-browse-agile -->

			<div class="movie-browse-agile">
				<!--/browse-agile-w3ls -->
				<div class="browse-agile-w3ls general-w3ls">
					<div class="tittle-head">
						<h4 class="latest-text">영화 정보</h4>
						<div class="container">
							<div class="agileits-single-top">
								<ol class="breadcrumb">
									<li><a href="index.html">영화 리스트</a></li>
									<li class="active">예매</li>
								</ol>
							</div>
						</div>
					</div>
					<div class="container">
						<div class="browse-inner">
						
						<c:forEach items="${movielist}" var="movielist">
						
							<div class="col-md-2 w3l-movie-gride-agile">
								<a href="${pageContext.request.contextPath}/main?command=detail&movieNum=${movielist.movie_num}" class="hvr-shutter-out-horizontal"><img
									src="${movielist.movie_path}" title="album-name" alt=" " />
									<div class="w3l-action-icon">
										<i class="fa fa-play-circle" aria-hidden="true"></i>
									</div> </a>
								<div class="mid-1">
									<div class="w3l-movie-text">
										<h6>
											<a href="${pageContext.request.contextPath}/main?command=detail&movieNum=${movielist.movie_num}">${movielist.movie_title }</a>
										</h6>
									</div>
									<div class="mid-2">

										<p>개봉일 : ${movielist.movie_date}</p>
										<div class="block-stars">
											<ul class="w3l-ratings">
												평점 : ${movielist.movie_rat }
											</ul>
										</div>
										<div class="clearfix"></div>
									</div>
									<div>
										<button type="button" class="btn btn-info btn-block outline" onclick="location.href='bookingview.jsp'">예매하기</button>
									</div>

								</div>
							</div>
						</c:forEach>
						
						
						
						
							<div class="col-md-2 w3l-movie-gride-agile">
								<a href="${pageContext.request.contextPath}/web/${pageContext.request.contextPath}/web/detail.jsp" class="hvr-shutter-out-horizontal"><img
									src="${pageContext.request.contextPath}/web/images/m8.jpg" title="album-name" alt=" " />
									<div class="w3l-action-icon">
										<i class="fa fa-play-circle" aria-hidden="true"></i>
									</div> </a>
								<div class="mid-1">
									<div class="w3l-movie-text">
										<h6>
											<a href="${pageContext.request.contextPath}/web/detail.jsp">The BFG</a>
										</h6>
									</div>
									<div class="mid-2">

										<p>2016</p>
										<div class="block-stars">
											<ul class="w3l-ratings">
												<li><a href="#"><i class="fa fa-star"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star-o"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star-o"
														aria-hidden="true"></i></a></li>


											</ul>
										</div>
										<div class="clearfix"></div>
									</div>

								</div>
								<div class="ribben two">
									<p>NEW</p>
								</div>
							</div>

							<div class="col-md-2 w3l-movie-gride-agile">
								<a href="${pageContext.request.contextPath}/web/detail.jsp" class="hvr-shutter-out-horizontal"><img
									src="${pageContext.request.contextPath}/web/images/m9.jpg" title="album-name" alt=" " />
									<div class="w3l-action-icon">
										<i class="fa fa-play-circle" aria-hidden="true"></i>
									</div> </a>
								<div class="mid-1">
									<div class="w3l-movie-text">
										<h6>
											<a href="${pageContext.request.contextPath}/web/detail.jsp">Central Intelligence</a>
										</h6>
									</div>
									<div class="mid-2">

										<p>2016</p>
										<div class="block-stars">
											<ul class="w3l-ratings">
												<li><a href="#"><i class="fa fa-star"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star-half-o"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star-o"
														aria-hidden="true"></i></a></li>


											</ul>
										</div>
										<div class="clearfix"></div>
									</div>

								</div>
								<div class="ribben two">
									<p>NEW</p>
								</div>
							</div>
							<div class="col-md-2 w3l-movie-gride-agile">
								<a href="${pageContext.request.contextPath}/web/detail.jsp" class="hvr-shutter-out-horizontal"><img
									src="${pageContext.request.contextPath}/web/images/m10.jpg" title="album-name" alt=" " />
									<div class="w3l-action-icon">
										<i class="fa fa-play-circle" aria-hidden="true"></i>
									</div> </a>
								<div class="mid-1">
									<div class="w3l-movie-text">
										<h6>
											<a href="${pageContext.request.contextPath}/web/detail.jsp">Don't Think Twice</a>
										</h6>
									</div>
									<div class="mid-2">

										<p>2016</p>
										<div class="block-stars">
											<ul class="w3l-ratings">
												<li><a href="#"><i class="fa fa-star"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star-o"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star-o"
														aria-hidden="true"></i></a></li>


											</ul>
										</div>
										<div class="clearfix"></div>
									</div>

								</div>
								<div class="ribben two">
									<p>NEW</p>
								</div>
							</div>
							<div class="col-md-2 w3l-movie-gride-agile">
								<a href="${pageContext.request.contextPath}/web/detail.jsp" class="hvr-shutter-out-horizontal"><img
									src="${pageContext.request.contextPath}/web/images/m11.jpg" title="album-name" alt=" " />
									<div class="w3l-action-icon">
										<i class="fa fa-play-circle" aria-hidden="true"></i>
									</div> </a>
								<div class="mid-1">
									<div class="w3l-movie-text">
										<h6>
											<a href="${pageContext.request.contextPath}/web/detail.jsp">X-Men</a>
										</h6>
									</div>
									<div class="mid-2">

										<p>2016</p>
										<div class="block-stars">
											<ul class="w3l-ratings">
												<li><a href="#"><i class="fa fa-star"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star-o"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star-o"
														aria-hidden="true"></i></a></li>


											</ul>
										</div>
										<div class="clearfix"></div>
									</div>

								</div>
								<div class="ribben two">
									<p>NEW</p>
								</div>
							</div>
							<div class="col-md-2 w3l-movie-gride-agile">
								<a href="${pageContext.request.contextPath}/web/detail.jsp" class="hvr-shutter-out-horizontal"><img
									src="${pageContext.request.contextPath}/web/images/m12.jpg" title="album-name" alt=" " />
									<div class="w3l-action-icon">
										<i class="fa fa-play-circle" aria-hidden="true"></i>
									</div> </a>
								<div class="mid-1">
									<div class="w3l-movie-text">
										<h6>
											<a href="${pageContext.request.contextPath}/web/detail.jsp">Greater</a>
										</h6>
									</div>
									<div class="mid-2">

										<p>2016</p>
										<div class="block-stars">
											<ul class="w3l-ratings">
												<li><a href="#"><i class="fa fa-star"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star-o"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star-o"
														aria-hidden="true"></i></a></li>


											</ul>
										</div>
										<div class="clearfix"></div>
									</div>

								</div>
								<div class="ribben two">
									<p>NEW</p>
								</div>
							</div>

							<div class="clearfix"></div>
						</div>
						<!-- /latest-movies1 -->
						<div class="browse-inner-come-agile-w3">
							<div class="col-md-2 w3l-movie-gride-agile">
								<a href="${pageContext.request.contextPath}/web/detail.jsp" class="hvr-shutter-out-horizontal"><img
									src="${pageContext.request.contextPath}/web/images/c7.jpg" title="album-name" alt=" " />
									<div class="w3l-action-icon">
										<i class="fa fa-play-circle" aria-hidden="true"></i>
									</div> </a>
								<div class="mid-1">
									<div class="w3l-movie-text">
										<h6>
											<a href="${pageContext.request.contextPath}/web/detail.jsp">Mike-Dave</a>
										</h6>
									</div>
									<div class="mid-2">

										<p>2016</p>
										<div class="block-stars">
											<ul class="w3l-ratings">
												<li><a href="#"><i class="fa fa-star"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star-o"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star-o"
														aria-hidden="true"></i></a></li>


											</ul>
										</div>
										<div class="clearfix"></div>
									</div>

								</div>
								<div class="ribben two">
									<p>NEW</p>
								</div>
							</div>
							<div class="col-md-2 w3l-movie-gride-agile">
								<a href="${pageContext.request.contextPath}/web/detail.jsp" class="hvr-shutter-out-horizontal"><img
									src="${pageContext.request.contextPath}/web/images/c8.jpg" title="album-name" alt=" " />
									<div class="w3l-action-icon">
										<i class="fa fa-play-circle" aria-hidden="true"></i>
									</div> </a>
								<div class="mid-1">
									<div class="w3l-movie-text">
										<h6>
											<a href="${pageContext.request.contextPath}/web/detail.jsp">Bad Moms</a>
										</h6>
									</div>
									<div class="mid-2">

										<p>2016</p>
										<div class="block-stars">
											<ul class="w3l-ratings">
												<li><a href="#"><i class="fa fa-star"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star-half-o"
														aria-hidden="true"></i></a></li>


											</ul>
										</div>
										<div class="clearfix"></div>
									</div>

								</div>
								<div class="ribben two">
									<p>NEW</p>
								</div>
							</div>
							<div class="col-md-2 w3l-movie-gride-agile">
								<a href="${pageContext.request.contextPath}/web/detail.jsp" class="hvr-shutter-out-horizontal"><img
									src="${pageContext.request.contextPath}/web/images/c9.jpg" title="album-name" alt=" " />
									<div class="w3l-action-icon">
										<i class="fa fa-play-circle" aria-hidden="true"></i>
									</div> </a>
								<div class="mid-1">
									<div class="w3l-movie-text">
										<h6>
											<a href="${pageContext.request.contextPath}/web/detail.jsp">Barber Shop</a>
										</h6>
									</div>
									<div class="mid-2">

										<p>2016</p>
										<div class="block-stars">
											<ul class="w3l-ratings">
												<li><a href="#"><i class="fa fa-star"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star-o"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star-o"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star-o"
														aria-hidden="true"></i></a></li>


											</ul>
										</div>
										<div class="clearfix"></div>
									</div>

								</div>
								<div class="ribben two">
									<p>NEW</p>
								</div>
							</div>
							<div class="col-md-2 w3l-movie-gride-agile">
								<a href="${pageContext.request.contextPath}/web/detail.jsp" class="hvr-shutter-out-horizontal"><img
									src="${pageContext.request.contextPath}/web/images/c10.jpg" title="album-name" alt=" " />
									<div class="w3l-action-icon">
										<i class="fa fa-play-circle" aria-hidden="true"></i>
									</div> </a>
								<div class="mid-1">
									<div class="w3l-movie-text">
										<h6>
											<a href="${pageContext.request.contextPath}/web/detail.jsp">Nine Leaves</a>
										</h6>
									</div>
									<div class="mid-2">

										<p>2016</p>
										<div class="block-stars">
											<ul class="w3l-ratings">
												<li><a href="#"><i class="fa fa-star"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star-half-o"
														aria-hidden="true"></i></a></li>


											</ul>
										</div>
										<div class="clearfix"></div>
									</div>

								</div>
								<div class="ribben two">
									<p>NEW</p>
								</div>
							</div>
							<div class="col-md-2 w3l-movie-gride-agile">
								<a href="${pageContext.request.contextPath}/web/detail.jsp" class="hvr-shutter-out-horizontal"><img
									src="${pageContext.request.contextPath}/web/images/c11.jpg" title="album-name" alt=" " />
									<div class="w3l-action-icon">
										<i class="fa fa-play-circle" aria-hidden="true"></i>
									</div> </a>
								<div class="mid-1">
									<div class="w3l-movie-text">
										<h6>
											<a href="${pageContext.request.contextPath}/web/detail.jsp">Billy Lynn’s </a>
										</h6>
									</div>
									<div class="mid-2">

										<p>2016</p>
										<div class="block-stars">
											<ul class="w3l-ratings">
												<li><a href="#"><i class="fa fa-star"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star-o"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star-o"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star-o"
														aria-hidden="true"></i></a></li>


											</ul>
										</div>
										<div class="clearfix"></div>
									</div>

								</div>
								<div class="ribben two">
									<p>NEW</p>
								</div>
							</div>
							<div class="col-md-2 w3l-movie-gride-agile">
								<a href="${pageContext.request.contextPath}/web/detail.jsp" class="hvr-shutter-out-horizontal"><img
									src="${pageContext.request.contextPath}/web/images/c12.jpg" title="album-name" alt=" " />
									<div class="w3l-action-icon">
										<i class="fa fa-play-circle" aria-hidden="true"></i>
									</div> </a>
								<div class="mid-1">
									<div class="w3l-movie-text">
										<h6>
											<a href="${pageContext.request.contextPath}/web/detail.jsp">War on Everyone</a>
										</h6>
									</div>
									<div class="mid-2">

										<p>2016</p>
										<div class="block-stars">
											<ul class="w3l-ratings">
												<li><a href="#"><i class="fa fa-star"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star-o"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star-o"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star-o"
														aria-hidden="true"></i></a></li>


											</ul>
										</div>
										<div class="clearfix"></div>
									</div>

								</div>
								<div class="ribben two">
									<p>NEW</p>
								</div>
							</div>

							<div class="clearfix"></div>
						</div>
						<!-- //latest-movies1 -->

					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="bottom.jsp"%>
</body>
</html>