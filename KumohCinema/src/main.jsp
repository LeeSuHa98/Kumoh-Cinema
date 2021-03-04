<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>금오 시네마</title>
	<link rel="styleSheet" href="../resources/css/main.css">
</head>
<body>
    <jsp:include page="/include/header.jsp" flush="false"></jsp:include>
	<div class="container">
        <div class="dd_show fade">
            <img src="http://image2.megabox.co.kr//mop/frontbanner/2019/95/B21A8A-EFA4-4A37-9826-3FD826052FDB.jpg"
                alt="">
        </div>
        <div class="dd_show fade">
            <img src="http://image2.megabox.co.kr//mop/frontbanner/2019/61/93777F-A845-4F35-A953-529A72D6E48B.jpg"
                alt="">
        </div>

        <div class="dd_show">
            <img src="http://image2.megabox.co.kr//mop/frontbanner/2019/71/19E015-11C4-4958-824C-4DE30A522CC1.jpg"
                alt="">
        </div>
        <div style="text-align:center">
            <span class="dot"></span>
            <span class="dot"></span>
            <span class="dot"></span>
        </div>
    </div>
    <div class="con">
        <div class="flip_box">
            <div class="flip_button" style="text-align:center">
                <span class="btn" onclick="currentSlide(1)">박스오피스</span>
                <span class="btn" onclick="currentSlide(2)">최신개봉작</span>
                <span class="btn" onclick="currentSlide(3)">상영예정작</span>
            </div>
            <div class="sm_slide fade">
                <ul>
                    <!--영화 1개 선택했을 때-->
                    <li class="item">
                        <div class="poster">
                            <div class="poster_img">
                                <img src="http://image2.megabox.co.kr/mop/poster/2019/AE/67DF5E-BDDE-4CE3-8B5E-7D24DDD1C912.large.jpg"
                                    alt="악인전">
                            </div>
                        </div>
                        <div class="poster_name_info">
                            <h3 class="sm_film">
                                <span class="film_rate age_19">
                                    <img src="../image/age_19.png" alt="청불">
                                </span>
                                <a href="" class="film_title">악인전</a>
                            </h3>
                            <div class="button_reserve_star">
                                <button onclick="" class="flip_semi_botton">예매</button>
                                <button onclick="" class="flip_semi_botton">후기</button>
                            </div>
                        </div>
                    </li>
                    <li class="item">
                        <div class="poster">
                            <div class="poster_img">
                                <img src="http://image2.megabox.co.kr/mop/poster/2019/BC/F3BD5B-0A1A-4D98-A22E-3743EEDBF403.large.jpg"
                                    alt="알라딘">
                            </div>
                        </div>
                        <div class="poster_name_info">
                            <h3 class="sm_film">
                                <span class="film_rate age_total">
                                    <img src="../image/age_total.png" alt="전체">
                                </span>
                                <a href="" class="film_title">알라딘</a>
                            </h3>
                            <div class="button_reserve_star">
                                <button onclick="" class="flip_semi_botton">예매</button>
                                <button onclick="" class="flip_semi_botton">후기</button>
                            </div>
                        </div>
                    </li>
                    <li class="item">
                        <div class="poster">
                            <div class="poster_img">
                                <img src="http://image2.megabox.co.kr/mop/poster/2019/01/3EA32B-AC6E-444E-ADD8-E3D8C05193CD.large.jpg"
                                    alt="어벤져스: 엔드게임">
                            </div>
                        </div>
                        <div class="poster_name_info">
                            <h3 class="sm_film">
                                <span class="film_rate age_12">
                                    <img src="../image/age_12.png" alt="12세">
                                </span>
                                <a href="" class="film_title">어벤져스: 엔드게임</a>
                            </h3>
                            <div class="button_reserve_star">
                                <button onclick="" class="flip_semi_botton">예매</button>
                                <button onclick="" class="flip_semi_botton">후기</button>
                            </div>
                        </div>
                    </li>
                    <li class="item">
                        <div class="poster">
                            <div class="poster_img">
                                <img src="http://image2.megabox.co.kr/mop/poster/2019/9E/1DFEE7-B2CA-4100-9414-71E641BDF620.large.jpg"
                                    alt="기생충">
                            </div>
                        </div>
                        <div class="poster_name_info">
                            <h3 class="sm_film">
                                <span class="film_rate age_15">
                                    <img src="../image/age_15.png" alt="15세">
                                </span>
                                <a href="" class="film_title">기생충</a>
                            </h3>
                            <div class="button_reserve_star">
                                <button onclick="" class="flip_semi_botton">예매</button>
                                <button onclick="" class="flip_semi_botton">후기</button>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>

            <div class="sm_slide fade">
                <ul>
                    <!--영화 1개 선택했을 때-->
                    <li class="item">
                        <div class="poster">
                            <div class="poster_img">
                                <img src="http://image2.megabox.co.kr/mop/poster/2019/01/3EA32B-AC6E-444E-ADD8-E3D8C05193CD.large.jpg"
                                    alt="어벤져스: 엔드게임">
                            </div>
                        </div>
                        <div class="poster_name_info">
                            <h3 class="sm_film">
                                <span class="film_rate age_12">
                                    <img src="../image/age_12.png" alt="12세">
                                </span>
                                <a href="" class="film_title">어벤져스: 엔드게임</a>
                            </h3>
                            <div class="button_reserve_star">
                                <button onclick="" class="flip_semi_botton">예매</button>
                                <button onclick="" class="flip_semi_botton">후기</button>
                            </div>
                        </div>
                    </li>
                    <li class="item">
                        <div class="poster">
                            <div class="poster_img">
                                <img src="http://image2.megabox.co.kr/mop/poster/2019/76/B8277D-5F55-4D93-9693-4E84BDE07B87.large.jpg"
                                    alt="어린 의뢰인">
                            </div>
                        </div>
                        <div class="poster_name_info">
                            <h3 class="sm_film">
                                <span class="film_rate age_12">
                                    <img src="../image/age_15.png" alt="15세">
                                </span>
                                <a href="" class="film_title">의뢰인</a>
                            </h3>
                            <div class="button_reserve_star">
                                <button onclick="" class="flip_semi_botton">예매</button>
                                <button onclick="" class="flip_semi_botton">후기</button>
                            </div>
                        </div>
                    </li>
                    <li class="item">
                        <div class="poster">
                            <div class="poster_img">
                                <img src="http://image2.megabox.co.kr/mop/poster/2019/95/A1406F-7C73-428C-932E-CF4FA76E891D.large.jpg"
                                    alt="뷰티풀 보이스">
                            </div>
                        </div>
                        <div class="poster_name_info">
                            <h3 class="sm_film">
                                <span class="film_rate age_12">
                                    <img src="../image/age_15.png" alt="15세">
                                </span>
                                <a href="" class="film_title">뷰티풀 보이스</a>
                            </h3>
                            <div class="button_reserve_star">
                                <button onclick="" class="flip_semi_botton">예매</button>
                                <button onclick="" class="flip_semi_botton">후기</button>
                            </div>
                        </div>
                    </li>
                    <li class="item">
                        <div class="poster">
                            <div class="poster_img">
                                <img src="http://image2.megabox.co.kr/mop/poster/2019/BC/F3BD5B-0A1A-4D98-A22E-3743EEDBF403.large.jpg"
                                    alt="알라딘">
                            </div>
                        </div>
                        <div class="poster_name_info">
                            <h3 class="sm_film">
                                <span class="film_rate age_12">
                                    <img src="../image/age_total.png" alt="전체">
                                </span>
                                <a href="" class="film_title">알라딘</a>
                            </h3>
                            <div class="button_reserve_star">
                                <button onclick="" class="flip_semi_botton">예매</button>
                                <button onclick="" class="flip_semi_botton">후기</button>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>

            <div class="sm_slide fade">
                <ul>
                    <!--영화 1개 선택했을 때-->
                    <li class="item">
                        <div class="poster">
                            <div class="poster_img">
                                <img src="http://image2.megabox.co.kr/mop/poster/2019/BC/F3BD5B-0A1A-4D98-A22E-3743EEDBF403.large.jpg"
                                    alt="알라딘">
                            </div>
                        </div>
                        <div class="poster_name_info">
                            <h3 class="sm_film">
                                <span class="film_rate age_12">
                                    <img src="../image/age_total.png" alt="전체">
                                </span>
                                <a href="" class="film_title">알라딘</a>
                            </h3>
                            <div class="button_reserve_star">
                                <button onclick="" class="flip_semi_botton">예매</button>
                                <button onclick="" class="flip_semi_botton">후기</button>
                            </div>
                        </div>
                    </li>
                    <li class="item">
                        <div class="poster">
                            <div class="poster_img">
                                <img src="http://image2.megabox.co.kr/mop/poster/2019/20/C04713-8FB3-4E29-9076-6088AC2F3DCC.large.jpg"
                                    alt="더 보이">
                            </div>
                        </div>
                        <div class="poster_name_info">
                            <h3 class="sm_film">
                                <span class="film_rate age_12">
                                    <img src="../image/age_15.png" alt="15세">
                                </span>
                                <a href="" class="film_title">더 보이</a>
                            </h3>
                            <div class="button_reserve_star">
                                <button onclick="" class="flip_semi_botton">예매</button>
                                <button onclick="" class="flip_semi_botton">후기</button>
                            </div>
                        </div>
                    </li>
                    <li class="item">
                        <div class="poster">
                            <div class="poster_img">
                                <img src="http://image2.megabox.co.kr/mop/poster/2019/1B/2E8373-BBC5-4888-85B9-3964C8AA5F41.large.jpg"
                                    alt="시민 노무현">
                            </div>
                        </div>
                        <div class="poster_name_info">
                            <h3 class="sm_film">
                                <span class="film_rate age_12">
                                    <img src="../image/age_12.png" alt="12세">
                                </span>
                                <a href="" class="film_title">시민 노무현</a>
                            </h3>
                            <div class="button_reserve_star">
                                <button onclick="" class="flip_semi_botton">예매</button>
                                <button onclick="" class="flip_semi_botton">후기</button>
                            </div>
                        </div>
                    </li>
                    <li class="item">
                        <div class="poster">
                            <div class="poster_img">
                                <img src="http://image2.megabox.co.kr/mop/poster/2019/DB/C44015-D801-4A47-B397-30CE2C81A351.large.jpg"
                                    alt="김군">
                            </div>
                        </div>
                        <div class="poster_name_info">
                            <h3 class="sm_film">
                                <span class="film_rate age_12">
                                    <img src="../image/age_15.png" alt="15세">
                                </span>
                                <a href="" class="film_title">김군</a>
                            </h3>
                            <div class="button_reserve_star">
                                <button onclick="" class="flip_semi_botton">예매</button>
                                <button onclick="" class="flip_semi_botton">후기</button>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
        <div class="bar">
                <ul>
                    <li>
                        <a href="">
                            금오 시네마 이벤트
                        </a>
                    </li>
                    <li>
                        <a href="">
                            금오랜드 티켓
                        </a>
                    </li>
                    <li>
                        <a href="">
                            무비 포스트
                        </a>
                    </li>
                    <li>
                        <a href="">
                            위대한 웹프 교실
                        </a>
                    </li>
                    <li>
                        <a href="">
                            up!
                        </a>
                    </li>
                </ul>
            </div>
    </div>
    <jsp:include page="/include/footer.jsp" flush="false"></jsp:include>
    
	<script type="text/javascript" src="../resources/js/main.js"></script>
</body>
</html>