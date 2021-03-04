<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%request.setCharacterEncoding("EUC-KR");%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>�ݿ� �ó׸�</title>
	<link rel="styleSheet" href="../resources/css/myPageSheet.css">
</head>
<body>
	<jsp:include page="/include/header.jsp" flush="false"></jsp:include>
	
	<section class="container">
		<div>
			<img id="my_page_title" src="../image/my_page_title.png" alt="����������">
		</div>
		<!--���ų���-->
		<article class="MyReservation">
			<h2 class="title">���ų���</h2>
			<div class="myMovieList">
				<c:if test="${MYRESERVE == null}">
					<p>��ȭ�� ������ ������!</p>
				</c:if>
				<c:if test="${MYRESERVE != null}">
					<c:forEach var="res" items="${MYRESERVE}">
					<div class="movie">
						<!--������-->
						<div class="poster">
							<img src="${res.getSmallPoster()}">
						</div>
						<!--������-->
						<div class="reservationInfo">
							<h2>�����</h2>
							<div class="reservationDetail">
								<ul>
									<li>���Ͻ� ${res.getDate()}</li>
								</ul>
								<ul>
									<li>�󿵰� ${res.getRegion()} ����</li>
								</ul>
								<ul>
									<li>�¼� ${res.getSeats()}</li>
								</ul>
								<ul>
									<li>�����ݾ� <fmt:formatNumber value= "${res.getTotalPrice()}" pattern= "###,###"/> ��</li>
								</ul>
							</div>
						</div>
					</div>
					</c:forEach>
				</c:if>
			</div>
		</article>
		<!--�� ����-->
		<article class="MyComment">
			<h2 class="title">�� ����</h2>
			<div class="myReviewList">
				<c:if test="${MYREVIEW == null}">
					<p>���並 ���� ������!</p>
				</c:if>
				<c:if test="${MYREVIEW != null}">
					<% int i=0; %>
					<c:forEach var="rev" items="${MYREVIEW}">
					<div class="MyReview">
						<div class="movieTitle">
							${rev.getMovieTitle()}
							<div class="button">
								<button class="update_review_btn" id="<%=i%>">����</button>
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
								<button class="update_review_btn" onclick="update(<%=i%>); return false;">����</button>
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