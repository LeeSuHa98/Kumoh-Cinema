<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="CinemaObjects.Movie" %>
<%
	request.setCharacterEncoding("UTF-8");
	
	if(session.getAttribute("user") == null) {
		pageContext.setAttribute("CHECKLOGIN", false);
	}
	else {
		pageContext.setAttribute("CHECKLOGIN", true);
	}
	if(session.getAttribute("SAVE") == "success") {
		out.println("<script>alert('리뷰가 등록되었습니다');</script>");
		session.removeAttribute("SAVE");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>금오 시네마</title>
<link rel="styleSheet" href="../resources/css/movieInformationSheet.css">
</head>
<body>
	<jsp:include page="/include/header.jsp" flush="false"></jsp:include>
	<section class="container">
		<!--영화 정보-->
		<article class="movieHead">
			<!--영화 이미지 삽입-->
			<div class="bigPoster">
				<img src="${MOVIEINFO.getBigImageUrl()}">

			</div>
			<!--포스터+영화정보-->
			<div class="smallPoster">
				<!--포스터-->
				<div id="poster">
					<img src="${MOVIEINFO.getSmallImageUrl()}">
				</div>
				<!--영화정보-->
				<div id="movieInfo">
					<h1>${MOVIEINFO.getMovieTitle()}</h1>
					<h2>${MOVIEINFO.getYear()}·${MOVIEINFO.getCountry()}</h2>
					<h2 id="movieDirector">${DIRECTOR}</h2>
				</div>
			</div>
		</article>
		<article class="movieBody">
			<!--기본정보-->
			<div class="stdInformation">
				<h2 class="title">기본 정보</h2>
				<dl>
					<dt>${MOVIEINFO.getMovieTitle()}</dt>
					<dd>${MOVIEINFO.getYear()}·${MOVIEINFO.getCountry()}</dd>
					<br>
					<dd>${MOVIEINFO.getInfo()}</dd>
				</dl>
			</div>
			<!--출연/제작-->
			<div class="cast">
				<h2 class="title">출연/제작</h2>
				<c:forEach var="cast" items="${CASTS}">
					<div class="castList">
						<div class="roundImg">
							<img class="Img" src="${cast.getProfileImage()}">
						</div>
						<div class="castInfo">
							<div>${cast.getName()}</div>
							<div>${cast.getRole()}</div>
						</div>
					</div>
				</c:forEach>
			</div>

			<!--후기목록-->
			<div class="reviewList">
				<h2 class="title">리뷰</h2>
				<c:if test="${ALLREVIEW == null}">
					<p>리뷰를 남겨주세요!</p>
				</c:if>
				<c:if test="${ALLREVIEW != null}">
					<div class="review">
						<c:forEach var="rev" items="${ALLREVIEW}">
							<div>
								<div class="reviewer">${rev.getWriter()}</div>
								<div class="reviewText">${rev.getContent()}</div>
							</div>
						</c:forEach>
					</div>
				</c:if>
			</div>
			<!--후기작성-->
			<c:if test="${CHECKLOGIN}">
				<div class="reviewForm">
					<form action="saveReview.jsp" method="post">
						<h2 class="title">리뷰작성</h2>
						<textarea style="width: 98%" rows=8 name="COMMENT"></textarea>
						<Input type="image" id="review_btn" src="../image/review_btn.png"
							alt="후기작성 버튼">
					</form>
				</div>
			</c:if>
		</article>
	</section>
	<jsp:include page="/include/footer.jsp" flush="false"></jsp:include>
	<%
		session.removeAttribute("MOVIEINFO");
		session.removeAttribute("CASTS");
		session.removeAttribute("DIRECTOR");
		session.removeAttribute("ALLREVIEW");
		session.removeAttribute("SENDREVIEW");

	%>
</body>
</html>
<script src="../resources/js/registerReview.js"></script>