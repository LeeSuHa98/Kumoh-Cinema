<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
                <img src="../image/BigPoster.jpg">
            </div>
            <!--포스터+영화정보-->
            <div class="smallPoster">
                <!--포스터-->
                <div id="poster">
                    <img src="../image/SmallPoster.jpg">
                </div>
                <!--영화정보-->
                <div id="movieInfo">
                    <h1>기생충</h1>
                    <h2>2019 · 드라마 · 한국</h2>
                    <h2 id="movieDirector">봉준호 감독</h2>
                </div>
            </div>
        </article>
        <article class="movieBody">
            <!--기본정보-->
            <div class="stdInformation">
                <h2 class="title">기본 정보</h2>
                <dl>
                    <dt>기생충</dt>
                    <dd>2019 · 한국 · 드라마</dd>
                    <dd>2시간 11분</dd>
                    <br>
                    <dd>  전원 백수인 ‘기택’네 장남 ‘기우’가 고액 과외 면접을 위해 ‘박사장’네 집에 발을 들이면서 시작된 두 가족의 만남이 걷잡을 수 없는 사건으로 번져가는 이야기</dd>
                </dl>
            </div>
            <!--출연/제작-->
            <div class="cast">
                <h2 class="title">출연/제작</h2>
                <div>
                    <ul class="castList">
                        <li>
                            <div class="roundImg">
                                <img class="Img" src="../image/movieImage/bong.jpg">
                            </div>
                            <div class="castInfo">
                                <div>봉준호</div>
                                <div>감독</div>
                            </div>
                        </li>
                        <li>
                            <div class="roundImg">
                                <img class="Img" src="../image/movieImage/song.jpg">
                            </div>
                            <div class="castInfo">
                                <div>송강호</div>
                                <div>주연</div>
                            </div>
                        </li>
                        <li>
                            <div class="roundImg">
                                <img class="Img" src="../image/movieImage/jang.jpg">
                            </div>
                            <div class="castInfo">
                                <div>장혜진</div>
                                <div>주연</div>
                            </div>
                        </li>
                    </ul>
                </div>  
                <div>
                    <ul class="castList">
                        <li>
                            <div class="roundImg">
                                <img class="Img" src="../image/movieImage/choi.jpg">
                            </div>
                            <div class="castInfo">
                                <div>최우식</div>
                                <div>주연</div>
                            </div>
                        </li>
                        <li>
                            <div class="roundImg">
                                <img class="Img" src="../image/movieImage/park.jpg">
                            </div>
                            <div class="castInfo">
                                <div>박소담</div>
                                <div>주연</div>
                            </div>
                        </li>
                        <li>
                            <div class="roundImg">
                                <img class="Img" src="../image/movieImage/lee.jpg">
                            </div>
                            <div class="castInfo">
                                <div>이선균</div>
                                <div>조연</div>
                            </div>
                        </li>
                    </ul>
                </div>
                <div>
                    <ul class="castList">
                        <li>
                            <div class="roundImg">
                                <img class="Img" src="../image/movieImage/jo.jpg">
                            </div>
                            <div class="castInfo">
                                <div>조여정</div>
                                <div>조연</div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            
            <!--후기목록-->
            <div class="reviewList">
                <h2 class="title">리뷰</h2>
                <div class="review">
                    <div>
                        <div class="reviewer">
                         	   노현진
                        </div>
                        <div class="reviewText">
 			                           황금종려상 축하합니다.
                        </div>
                    </div>
                    <div>
                        <div class="reviewer">
                            Noh
                        </div>
                        <div class="reviewText">
 			                           와아
                        </div>
                    </div>
                    <div>
                        <div class="reviewer">
                            hyyy
                        </div>
                        <div class="reviewText">
                   		         허리가 너무 아파요.....
                        </div>
                    </div>
                    <div>
                        <div class="reviewer">
             		               노현진
                        </div>
                        <div class="reviewText">
              		              집에갈래
                        </div>
                    </div>
                </div>
            </div>
            <!--후기작성-->
            <div class="reviewForm">
                <h2 class="title">리뷰작성</h2>
                <textarea style="width:98%" rows=8></textarea>
                <Input type="image" id="review_btn" src="../image/review_btn.png" alt="후기작성 버튼">
            </div>
        </article>
    </section>
	<jsp:include page="/include/footer.jsp" flush="false"></jsp:include>
</body>
</html>
<script src="../resources/js/registerReview.js"></script>