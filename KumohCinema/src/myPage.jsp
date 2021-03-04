<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
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
				<div class="movie">
					<!--포스터-->
					<div class="poster">
						<img src="../image/SmallPoster.jpg">
					</div>
					<!--상영정보-->
					<div class="reservationInfo">
						<h2>기생충</h2>
						<div class="reservationDetail">
							<ul>
								<li>상영일 2019-05-31(금)</li>
								<li>상영시간 17:45~20:06</li>
							</ul>
							<ul>
								<li>상영관 구미역, 7관</li>
								<li>좌석 I9</li>
							</ul>
							<ul>
								<li>관람인원 성인 1</li>
							</ul>
							<ul>
								<li>주문금액 12,000원</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="movie">
					<!--포스터-->
					<div class="poster">
						<img src="../image/SmallPoster.jpg">
					</div>
					<!--상영정보-->
					<div class="reservationInfo">
						<h2>기생충</h2>
						<div class="reservationDetail">
							<ul>
								<li>상영일 2019-05-31(금)</li>
								<li>상영시간 17:45~20:06</li>
							</ul>
							<ul>
								<li>상영관 구미역, 7관</li>
								<li>좌석 I9</li>
							</ul>
							<ul>
								<li>관람인원 성인 1</li>
							</ul>
							<ul>
								<li>주문금액 12,000원</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</article>
		<!--내 리뷰-->
		<article class="MyReviewList">
			<h2 class="title">내 리뷰</h2>
			<div class="MyReview">
				<div class="movieTitle">
					기생충
					<div class="button">
						<button class="update_review_btn" type="button">수정</button>
						<button class="delete_review_btn" type="button">
							<img src="../image/delete_btn.png">
						</button>
					</div>
				</div>
				<div class="reviewText">황금종려상 축하합니다.</div>
			</div>
			<div class="MyReview">
				<div class="movieTitle">
					서치
					<div class="button">
						<button class="update_review_btn" type="button">수정</button>
						<button class="delete_review_btn" type="button">
							<img src="../image/delete_btn.png">
						</button>
					</div>
				</div>
				<div class="reviewText">존잼</div>
			</div>
			<div class="MyReview">
				<div class="movieTitle">
					곱창
					<div class="button">
						<button class="update_review_btn" type="button">수정</button>
						<button class="delete_review_btn" type="button">
							<img src="../image/delete_btn.png">
						</button>
					</div>
				</div>
				<div class="reviewText">막창에 소주</div>
			</div>
		</article>
	</section>
	<jsp:include page="/include/footer.jsp" flush="false"></jsp:include>
</body>
</html>