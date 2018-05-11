<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>무비 원</title>
<meta charset="utf-8">
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="One Movies Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="${pageContext.request.contextPath}/web/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="${pageContext.request.contextPath}/web/css/style.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/web/css/contactstyle.css" type="text/css" media="all" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/web/css/faqstyle.css" type="text/css" media="all" />
<link href="${pageContext.request.contextPath}/web/css/single.css" rel='stylesheet' type='text/css' />
<link href="${pageContext.request.contextPath}/web/css/medile.css" rel='stylesheet' type='text/css' />
<!-- banner-slider -->
<link href="${pageContext.request.contextPath}/web/css/jquery.slidey.min.css" rel="stylesheet">
<!-- //banner-slider -->
<!-- pop-up -->
<link href="${pageContext.request.contextPath}/web/css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
<!-- //pop-up -->
<!-- font-awesome icons -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/web/css/font-awesome.min.css" />
<!-- //font-awesome icons -->
<!-- js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/web/js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<!-- banner-bottom-plugin -->
<!-- <link href="css/owl.carousel.css" rel="stylesheet" type="text/css" media="all">
 --><link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="${pageContext.request.contextPath}/web/js/owl.carousel.js"></script>

<!--실제 슬라이드 효과 적용란-->
<script>
	$(document).ready(function() { 
		$("#owl-demo").owlCarousel({
	 
		  autoPlay: 3000, //슬라이드 전환 시간
	 
		  items : 5,
		  itemsDesktop : [640,4],
		  itemsDesktopSmall : [414,3]
	 
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
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->
</head>
<body>
	<%@include file="head.jsp" %>
		<div id="slidey" style="display:none;">
		<ul>
		<c:forEach items="${movielist}" var="movielist">
			<li><img src="${movielist.moviePath}" alt=" "><p class='title'>${movielist.movieTitle}</p><p class='description'> Tarzan, having acclimated to life in London, is called back to his former home in the jungle to investigate the activities at a mining encampment.</p></li>
		</c:forEach>	
		
		
			<li><img src="${pageContext.request.contextPath}/web/images/2.jpg" alt=" "><p class='title'>Maximum Ride</p><p class='description'>Six children, genetically cross-bred with avian DNA, take flight around the country to discover their origins. Along the way, their mysterious past is ...</p></li>
			<li><img src="${pageContext.request.contextPath}/web/images/3.jpg" alt=" "><p class='title'>Independence</p><p class='description'>The fate of humanity hangs in the balance as the U.S. President and citizens decide if these aliens are to be trusted ...or feared.</p></li>
			<li><img src="${pageContext.request.contextPath}/web/images/4.jpg" alt=" "><p class='title'>Central Intelligence</p><p class='description'>Bullied as a teen for being overweight, Bob Stone (Dwayne Johnson) shows up to his high school reunion looking fit and muscular. Claiming to be on a top-secret ...</p></li>
			<li><img src="${pageContext.request.contextPath}/web/images/6.jpg" alt=" "><p class='title'>Ice Age</p><p class='description'>In the film's epilogue, Scrat keeps struggling to control the alien ship until it crashes on Mars, destroying all life on the planet.</p></li>
			<li><img src="${pageContext.request.contextPath}/web/images/7.jpg" alt=" "><p class='title'>X - Man</p><p class='description'>In 1977, paranormal investigators Ed (Patrick Wilson) and Lorraine Warren come out of a self-imposed sabbatical to travel to Enfield, a borough in north ...</p></li>
		
		
		</ul>   	
    </div>
    <script src="${pageContext.request.contextPath}/web/js/jquery.slidey.js"></script>
    <script src="${pageContext.request.contextPath}/web/js/jquery.dotdotdot.min.js"></script>
	   <script type="text/javascript">
			$("#slidey").slidey({
				interval: 8000,
				listCount: 5,
				autoplay: false,
				showList: true
			});
			$(".slidey-list-description").dotdotdot();
		</script>
<!-- //banner -->
<!-- banner-bottom -->

<!-- //banner-bottom -->

<!-- general -->
	<div class="general">
		<h4 class="latest-text w3_latest_text">인기 영화</h4>
		<div class="container">
			<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
				<ul id="myTab" class="nav nav-tabs" role="tablist">
					<li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">최신개봉작</a></li>
					<li role="presentation"><a href="#profile" role="tab" id="profile-tab" data-toggle="tab" aria-controls="profile" aria-expanded="false">관객수</a></li>
					<li role="presentation"><a href="#rating" id="rating-tab" role="tab" data-toggle="tab" aria-controls="rating" aria-expanded="true">평점</a></li>
				</ul>

				<div id="myTabContent" class="tab-content">
					<div role="tabpanel" class="tab-pane fade active in" id="home" aria-labelledby="home-tab">
						<div class="w3_agile_featured_movies">
							
							
							
<!-- 							최신개봉작순 -->
							<c:forEach items="${movielist}" var="movielist">
						
							<div class="col-md-2 w3l-movie-gride-agile">
								<a href="${pageContext.request.contextPath}/main?command=detail&movieNum=${movielist.movieNum}" class="hvr-shutter-out-horizontal"><img
									src="${movielist.moviePath}" title="album-name" alt=" " />
									<div class="w3l-action-icon">
										<i class="fa fa-play-circle" aria-hidden="true"></i>
									</div> </a>
								<div class="mid-1">
									<div class="w3l-movie-text">
										<h6>
											<a href="${pageContext.request.contextPath}/main?command=detail&movieNum=${movielist.movieNum}">${movielist.movieTitle}</a>
										</h6>
									</div>
									<div class="mid-2" >
										<div class="w3l-movie-text">
										개봉일 : ${movielist.movieDate}<br>
										
												제작 국가 : ${movielist.movieCountry}
										</div>
										<div class="clearfix"></div>
									</div>
									<div>
										<button type="button" class="btn btn-info btn-bloc outline" onclick="location.href='${pageContext.request.contextPath}/main?command=booking&bookingNum=8&movieNum=${movielist.movieNum}'">예매하기</button>
									</div>

								</div>
							</div>
						</c:forEach>
<!-- 							최신개봉작순 끝-->
							
							
							
							<div class="clearfix"> </div>
						</div>
					</div>
					<div role="tabpanel" class="tab-pane fade" id="profile" aria-labelledby="profile-tab">
						
						
						
						<!-- 							관객수 -->
						<c:forEach items="${movielist}" var="movielist">
						
							<div class="col-md-2 w3l-movie-gride-agile">
								<a href="${pageContext.request.contextPath}/main?command=detail&movieNum=${movielist.movieNum}" class="hvr-shutter-out-horizontal"><img
									src="${movielist.moviePath}" title="album-name" alt=" " />
									<div class="w3l-action-icon">
										<i class="fa fa-play-circle" aria-hidden="true"></i>
									</div> </a>
								<div class="mid-1">
									<div class="w3l-movie-text">
										<h6>
											<a href="${pageContext.request.contextPath}/main?command=detail&movieNum=${movielist.movieNum}">${movielist.movieTitle }</a>
										</h6>
									</div>
									<div class="mid-2">

										<div class="w3l-movie-text">
										개봉일 : ${movielist.movieDate}<br>
										
												제작 국가 : ${movielist.movieCountry}
										</div>
										<div class="clearfix"></div>
									</div>
									<div>
										<button type="button" class="btn btn-info btn-bloc outline" onclick="location.href='${pageContext.request.contextPath}/main?command=booking&bookingNum=8&movieNum=${movielist.movieNum}'">예매하기</button>
									</div>

								</div>
							</div>
						</c:forEach>
						<!-- 							관객수 끝 -->
						
						
						
						
						
						<div class="clearfix"> </div>
					</div>
					<div role="tabpanel" class="tab-pane fade" id="rating" aria-labelledby="rating-tab">
						
						
						
						
						
						<!-- 							평점순 -->
						<c:forEach items="${movielist}" var="movielist">
						
							<div class="col-md-2 w3l-movie-gride-agile">
								<a href="${pageContext.request.contextPath}/main?command=detail&movieNum=${movielist.movieNum}" class="hvr-shutter-out-horizontal"><img
									src="${movielist.moviePath}" title="album-name" alt=" " />
									<div class="w3l-action-icon">
										<i class="fa fa-play-circle" aria-hidden="true"></i>
									</div> </a>
								<div class="mid-1">
									<div class="w3l-movie-text">
										<h6>
											<a href="${pageContext.request.contextPath}/main?command=detail&movieNum=${movielist.movieNum}">${movielist.movieTitle }</a>
										</h6>
									</div>
									<div class="mid-2">
										<div class="w3l-movie-text">
										개봉일 : ${movielist.movieDate}<br>
										
												제작 국가 : ${movielist.movieCountry}
										</div>
										<div class="clearfix"></div>
									</div>
									<div>
										<button type="button" class="btn btn-info btn-bloc outline" onclick="location.href='${pageContext.request.contextPath}/main?command=booking&bookingNum=8&movieNum=${movielist.movieNum}'">예매하기</button>
									</div>

								</div>
							</div>
						</c:forEach>
						<!-- 							평점순  끝-->
						
						
						
						
						
						
						
						<div class="clearfix"> </div>
					</div>
					<div role="tabpanel" class="tab-pane fade" id="imdb" aria-labelledby="imdb-tab">
						<div class="col-md-2 w3l-movie-gride-agile">
							<a href="${pageContext.request.contextPath}/web/detail.jsp" class="hvr-shutter-out-horizontal"><img src="${pageContext.request.contextPath}/web/images/m22.jpg" title="album-name" class="img-responsive" alt=" " />
								<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
							</a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h6><a href="${pageContext.request.contextPath}/web/detail.jsp">Assassin's Creed 3</a></h6>							
								</div>
								<div class="mid-2 agile_mid_2_home">
									<p>2016</p>
									<div class="block-stars">
										<ul class="w3l-ratings">
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="ribben">
								<p>NEW</p>
							</div>
						</div>
						<div class="col-md-2 w3l-movie-gride-agile">
							<a href="${pageContext.request.contextPath}/web/detail.jsp" class="hvr-shutter-out-horizontal"><img src="${pageContext.request.contextPath}/web/images/m2.jpg" title="album-name" class="img-responsive" alt=" " />
								<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
							</a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h6><a href="${pageContext.request.contextPath}/web/detail.jsp">Bad Moms</a></h6>							
								</div>
								<div class="mid-2 agile_mid_2_home">
									<p>2016</p>
									<div class="block-stars">
										<ul class="w3l-ratings">
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="ribben">
								<p>NEW</p>
							</div>
						</div>
						<div class="col-md-2 w3l-movie-gride-agile">
							<a href="${pageContext.request.contextPath}/web/detail.jsp" class="hvr-shutter-out-horizontal"><img src="${pageContext.request.contextPath}/web/images/m9.jpg" title="album-name" class="img-responsive" alt=" " />
								<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
							</a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h6><a href="${pageContext.request.contextPath}/web/detail.jsp">Central Intelligence</a></h6>							
								</div>
								<div class="mid-2 agile_mid_2_home">
									<p>2016</p>
									<div class="block-stars">
										<ul class="w3l-ratings">
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="ribben">
								<p>NEW</p>
							</div>
						</div>
						<div class="col-md-2 w3l-movie-gride-agile">
							<a href="${pageContext.request.contextPath}/web/detail.jsp" class="hvr-shutter-out-horizontal"><img src="${pageContext.request.contextPath}/web/images/m10.jpg" title="album-name" class="img-responsive" alt=" " />
								<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
							</a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h6><a href="${pageContext.request.contextPath}/web/detail.jsp">Don't Think Twice</a></h6>							
								</div>
								<div class="mid-2 agile_mid_2_home">
									<p>2016</p>
									<div class="block-stars">
										<ul class="w3l-ratings">
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="ribben">
								<p>NEW</p>
							</div>
						</div>
						<div class="col-md-2 w3l-movie-gride-agile">
							<a href="${pageContext.request.contextPath}/web/detail.jsp" class="hvr-shutter-out-horizontal"><img src="${pageContext.request.contextPath}/web/images/m23.jpg" title="album-name" class="img-responsive" alt=" " />
								<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
							</a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h6><a href="${pageContext.request.contextPath}/web/detail.jsp">Dead Island 2</a></h6>							
								</div>
								<div class="mid-2 agile_mid_2_home">
									<p>2016</p>
									<div class="block-stars">
										<ul class="w3l-ratings">
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="ribben">
								<p>NEW</p>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
			</div>
		</div>
	</div>
<!-- //general -->
	<%@include file="bottom.jsp" %>
</body>
</html>