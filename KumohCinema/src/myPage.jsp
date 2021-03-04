<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
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
				<div class="movie">
					<!--������-->
					<div class="poster">
						<img src="../image/SmallPoster.jpg">
					</div>
					<!--������-->
					<div class="reservationInfo">
						<h2>�����</h2>
						<div class="reservationDetail">
							<ul>
								<li>���� 2019-05-31(��)</li>
								<li>�󿵽ð� 17:45~20:06</li>
							</ul>
							<ul>
								<li>�󿵰� ���̿�, 7��</li>
								<li>�¼� I9</li>
							</ul>
							<ul>
								<li>�����ο� ���� 1</li>
							</ul>
							<ul>
								<li>�ֹ��ݾ� 12,000��</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="movie">
					<!--������-->
					<div class="poster">
						<img src="../image/SmallPoster.jpg">
					</div>
					<!--������-->
					<div class="reservationInfo">
						<h2>�����</h2>
						<div class="reservationDetail">
							<ul>
								<li>���� 2019-05-31(��)</li>
								<li>�󿵽ð� 17:45~20:06</li>
							</ul>
							<ul>
								<li>�󿵰� ���̿�, 7��</li>
								<li>�¼� I9</li>
							</ul>
							<ul>
								<li>�����ο� ���� 1</li>
							</ul>
							<ul>
								<li>�ֹ��ݾ� 12,000��</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</article>
		<!--�� ����-->
		<article class="MyReviewList">
			<h2 class="title">�� ����</h2>
			<div class="MyReview">
				<div class="movieTitle">
					�����
					<div class="button">
						<button class="update_review_btn" type="button">����</button>
						<button class="delete_review_btn" type="button">
							<img src="../image/delete_btn.png">
						</button>
					</div>
				</div>
				<div class="reviewText">Ȳ�������� �����մϴ�.</div>
			</div>
			<div class="MyReview">
				<div class="movieTitle">
					��ġ
					<div class="button">
						<button class="update_review_btn" type="button">����</button>
						<button class="delete_review_btn" type="button">
							<img src="../image/delete_btn.png">
						</button>
					</div>
				</div>
				<div class="reviewText">����</div>
			</div>
			<div class="MyReview">
				<div class="movieTitle">
					��â
					<div class="button">
						<button class="update_review_btn" type="button">����</button>
						<button class="delete_review_btn" type="button">
							<img src="../image/delete_btn.png">
						</button>
					</div>
				</div>
				<div class="reviewText">��â�� ����</div>
			</div>
		</article>
	</section>
	<jsp:include page="/include/footer.jsp" flush="false"></jsp:include>
</body>
</html>