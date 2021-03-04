<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%request.setCharacterEncoding("EUC-KR");%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>금오 시네마</title>
	<link rel="styleSheet" href="../resources/css/myPageSheet.css">
</head>
<body>
	<jsp:include page="/include/header.jsp" flush="false"></jsp:include>
	
	<section class="container">
		<div>
			<img id="my_page_title" src="../image/my_page_title.png" alt="마이페이지">
		</div>
		<!--예매내역-->
		<article class="MyReservation">
			<h2 class="title">예매내역</h2>
			<div class="myMovieList">
				<c:if test="${MYRESERVE == null}">
					<p>영화를 예매해 보세요!</p>
				</c:if>
				<c:if test="${MYRESERVE != null}">
					<c:forEach var="res" items="${MYRESERVE}">
					<div class="movie">
						<!--포스터-->
						<div class="poster">
							<img src="${res.getSmallPoster()}">
						</div>
						<!--상영정보-->
						<div class="reservationInfo">
							<h2>기생충</h2>
							<div class="reservationDetail">
								<ul>
									<li>상영일시 ${res.getDate()}</li>
								</ul>
								<ul>
									<li>상영관 ${res.getRegion()} 지점</li>
								</ul>
								<ul>
									<li>좌석 ${res.getSeats()}</li>
								</ul>
								<ul>
									<li>결제금액 <fmt:formatNumber value= "${res.getTotalPrice()}" pattern= "###,###"/> 원</li>
								</ul>
							</div>
						</div>
					</div>
					</c:forEach>
				</c:if>
			</div>
		</article>
		<!--내 리뷰-->
		<article class="MyComment">
			<h2 class="title">내 리뷰</h2>
			<div class="myReviewList">
				<c:if test="${MYREVIEW == null}">
					<p>리뷰를 남겨 보세요!</p>
				</c:if>
				<c:if test="${MYREVIEW != null}">
					<% int i=0; %>
					<c:forEach var="rev" items="${MYREVIEW}">
					<div class="MyReview">
						<div class="movieTitle">
							${rev.getMovieTitle()}
							<div class="button">
								<button class="update_review_btn" id="<%=i%>">수정</button>
								<form action="deleteReview.jsp" method="post" id="de">
									<div id="dediv"></div>
									<input type="image" src="../image/delete_btn.png" class="delete_review_btn" onclick="deletef(<%=i%>); return false;">
								</form>
							</div>
						</div>
						<div class="reviewTextchg" id="reviewText<%=i%>" style="display: none">
							<form action="updateReview.jsp" method="post" id="up">
								<div id="updiv"></div>
								<textarea style="width: 100%" rows=3 name="CONTENT"></textarea>
								<button class="update_review_btn" onclick="update(<%=i%>); return false;">수정</button>
							</form>
						</div>
						<div class="reviewText" id="text<%=i%>">${rev.getContent()}</div>
					</div>
					<% i += 1; %>
					</c:forEach>
				</c:if>
			</div>
		</article>
	</section>
	
	<jsp:include page="/include/footer.jsp" flush="false"></jsp:include>
	
	<script type="text/javascript" src="../resources/js/myPageScript.js"></script>
	<%
		session.removeAttribute("MYRESERVE");
		session.removeAttribute("MYREVIEW");
	%>
</body>
</html>