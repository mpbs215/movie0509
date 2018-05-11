<%@page import="java.util.Arrays"%>
<%@page import="java.net.URLDecoder"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="kr.or.kobis.kobisopenapi.consumer.rest.KobisOpenAPIRestService"%>
<%@page import="org.codehaus.jackson.map.ObjectMapper"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Collection"%>
<%@page import="net.sf.json.JSONObject"%>
<%@page import="net.sf.json.util.JSONBuilder"%>
<%@page import="net.sf.json.JSONArray"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!--
------------------------------------------------------------
* @설명 : 영화코드 조회 REST 호출 - 서버측에서 호출하는 방식 예제
------------------------------------------------------------
-->
    <%
    // 파라메터 설정
	String curPage = request.getParameter("curPage")==null?"1":request.getParameter("curPage");					//현재페이지
	String itemPerPage = request.getParameter("itemPerPage")==null?"10":request.getParameter("itemPerPage");		//결과row수
	String movieNm = request.getParameter("movieNm")==null?"":request.getParameter("movieNm");						//영화명
	String directorNm = request.getParameter("directorNm")==null?"":request.getParameter("directorNm");				//감독명
	String openStartDt = request.getParameter("openStartDt")==null?"2018":request.getParameter("openStartDt");			//개봉연도 시작조건 ( YYYY )
	String openEndDt = request.getParameter("openEndDt")==null?"2018":request.getParameter("openEndDt");				//개봉연도 끝조건 ( YYYY )	
	String prdtStartYear = request.getParameter("prdtStartYear")==null?"":request.getParameter("prdtStartYear");	//제작연도 시작조건 ( YYYY )
	String prdtEndYear = request.getParameter("prdtEndYear")==null?"":request.getParameter("prdtEndYear");			//제작연도 끝조건    ( YYYY )
	String repNationCd = request.getParameter("repNationCd")==null?"":request.getParameter("repNationCd");			//대표국적코드 (공통코드서비스에서 '2204'로 조회된 국가코드)
	String[] movieTypeCdArr = request.getParameterValues("movieTypeCdArr")==null? null:request.getParameterValues("movieTypeCdArr");	//영화형태코드 배열 (공통코드서비스에서 '2201'로 조회된 영화형태코드)
	
	// 발급키
	String key = "d6d8454c7308c0221a075e56e2aeaf05";
	// KOBIS 오픈 API Rest Client를 통해 호출
    KobisOpenAPIRestService service = new KobisOpenAPIRestService(key);

	// 영화코드조회 서비스 호출 (boolean isJson, String curPage, String itemPerPage,String directorNm, String movieCd, String movieNm, String openStartDt,String openEndDt, String ordering, String prdtEndYear, String prdtStartYear, String repNationCd, String[] movieTypeCdArr)
    String movieCdResponse = service.getMovieList(true, curPage, itemPerPage, movieNm, directorNm, openStartDt, openEndDt, prdtStartYear, prdtEndYear, repNationCd, movieTypeCdArr);
	// Json 라이브러리를 통해 Handling
	ObjectMapper mapper = new ObjectMapper();
	HashMap<String,Object> result = mapper.readValue(movieCdResponse, HashMap.class);

	request.setAttribute("result",result);

	// KOBIS 오픈 API Rest Client를 통해 코드 서비스 호출 (boolean isJson, String comCode )
	String nationCdResponse = service.getComCodeList(true,"2204");
	HashMap<String,Object> nationCd = mapper.readValue(nationCdResponse, HashMap.class);
	request.setAttribute("nationCd",nationCd);

	String movieTypeCdResponse = service.getComCodeList(true,"2201");
	HashMap<String,Object> movieTypeCd = mapper.readValue(movieTypeCdResponse, HashMap.class);
	request.setAttribute("movieTypeCd",movieTypeCd);
    %>
<script type="text/javascript">
<%
	String movieTypeCds = "[";
	if(movieTypeCdArr!=null){
		for(int i=0;i<movieTypeCdArr.length;i++){
			movieTypeCds += "'"+movieTypeCdArr[i]+"'";
			if(i+1<movieTypeCdArr.length){
				movieTypeCds += ",";
			}
		}
		movieTypeCds += "]";
%>

$(function(){
	var movieTypeCd = <%=movieTypeCds%>;
	$(movieTypeCd).each(function(){
		$("input[name='movieTypeCdArr'][value='"+this+"']").prop("checked",true);
	});
});

<%
	}
%>
</script>
<body>
	<c:out value="${result.movieListResult.totCnt}"/>
	<table class="table table-hover table-fixed pre-scrollable">
		<tr style="background-color: #FF8D1B;">
			<th style="color: white">영화명</th>
			<th style="color: white">영화명(영)</th>
			<th style="color: white">개봉연도</th>
			<th style="color: white">제작국가</th>
			<th style="color: white">감독</th>
			<th style="color: white">제작상태</th>
			<th style="color: white">이미지</th>
			<th style="color: white">영상</th>
			<th style="color: white">영화고유번호</th>
			<th style="color: white">등록</th>
<!-- 			<th style="color: white">상영번호</th>
			<th style="color: white">상영관</th>
			<th style="color: white">상영날짜</th>
			<th style="color: white">상영시간</th> -->
		</tr>
	<c:if test="${not empty result.movieListResult.movieList}">
	<c:forEach items="${result.movieListResult.movieList}" var="movie">
		
		<tr>
			<form method="post" enctype="multipart/form-data" name="uploadForm" action="${pageContext.request.contextPath}/admin?command=movieInsert">
			<td><c:out value="${movie.movieNm}"/></td>
			<td><c:out value="${movie.movieNmEn}"/></td>
			<td><c:out value="${movie.openDt}"/></td>
			<td><c:out value="${movie.repNationNm}"/></td>
			<td><c:forEach items="${movie.directors}" var="director"><c:out value="${director.peopleNm}"/>,</c:forEach></td>
			<td><c:out value="${movie.prdtStatNm}"/></td>
			<td><input type="file" name="file" required="required"/></td>
			<td><input type="text" name="movieYoutube"/></td>
			<td><input type="text" name="movieNum" required="required"/></td>
			<td><input type="submit" value="등록"/></td>
			<input type="hidden" name="movieTitle" value="${movie.movieNm}"/>
			<input type="hidden" name="movieEtitle" value="${movie.movieNmEn}"/>
			<input type="hidden" name="movieDir" value="<c:forEach items="${movie.directors}" var="director"><c:out value="${director.peopleNm}"/>,</c:forEach>"/>
			<input type="hidden" name="movieDate" value="${movie.openDt}"/>
			<input type="hidden" name="movieState" value="${movie.prdtStatNm}"/>
			<input type="hidden" name="movieCountry" value="${movie.repNationNm}"/>
			</form> 
		</tr>
		
	</c:forEach>
	</c:if>
	</table>
	
	
	<form action="${pageContext.request.contextPath}/web/adminRegist.jsp">
		현재페이지 :<input type="text" name="curPage" value="<%=curPage %>" >
		최대 출력갯수:<input type="text" name="itemPerPage" value="<%=itemPerPage %>" >
		감독명:<input type="text" name="directorNm" value="<%=directorNm %>" >		
		영화명:<input type="text" name="movieNm" value="<%=movieNm %>"> <br /> <br />
		개봉연도조건:<input type="text" name="openStartDt" value="<%=openStartDt %>" > ~ <input type="text" name="openEndDt" value="<%=openEndDt %>" >
		제작연도조건:<input type="text" name="prdtStartYear" value="<%=prdtStartYear %>" > ~ <input type="text" name="prdtEndYear" value="<%=prdtEndYear %>" >		<br />

		국적:<select name="repNationCd">
			<option value="">-전체-</option>
			<c:forEach items="${nationCd.codes}" var="code">
			<option value="<c:out value="${code.fullCd}"/>"<c:if test="${param.repNationCd eq code.fullCd}"> selected="seleted"</c:if>><c:out value="${code.korNm}"/></option>
			</c:forEach>
			</select><br/>
		영화형태:
			<c:forEach items="${movieTypeCd.codes}" var="code" varStatus="status">
			<input type="checkbox" name="movieTypeCdArr" value="<c:out value="${code.fullCd}"/>" id="movieTpCd_<c:out value="${code.fullCd}"/>"/> <label for="movieTpCd_<c:out value="${code.fullCd}"/>"><c:out value="${code.korNm}"/></label>
			<c:if test="${status.count %4 eq 0}"><br/></c:if>
			</c:forEach>
			<br/>
		<input type="submit" name="" value="조회">
	</form>
</body>
</html>