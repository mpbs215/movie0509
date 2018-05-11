<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- //Latest-tv-series -->
<!-- footer -->
	<div class="footer">
		<div class="container">
			<div class="w3ls_footer_grid">
				<div class="col-md-6 w3ls_footer_grid_left">
					<address style="color: white">
					(13494)경기도 성남시 분당구 대왕판교로 670-8층 세미나실<br/>
					대표이사 : 김돈황  사업자등록번호 : 김돈황이랩을할다 홍홍<br/>
					통신판매업신고번호 : 2017-서울용산-0662<br/>
					개인정보보호 책임자 : 마케팅 담당 윤희용대표 <br/>
					이메일 : cjcgvmaster@cj.net<br/>
					RIDON고객센터 : 1588-1588
					</address>
				</div>
				<div class="col-md-6 w3ls_footer_grid_right">
					<a href="${pageContext.request.contextPath}/web/index.jsp"><h2>RD<span>Movies</span></h2></a>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="col-md-5 w3ls_footer_grid1_left">
				<p>&copy; 2016 One Movies. All rights reserved | Design by <a href="http://w3layouts.com/">W3layouts</a></p>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //footer -->
<!-- Bootstrap Core JavaScript -->
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
<!-- //here ends scrolling icon -->