<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>금오 시네마</title>
    <link rel="styleSheet" href="../resources/css/rsv_1Sheet.css">
</head>

<body>
    <jsp:include page="/include/header.jsp" flush="false"></jsp:include>
    
    <div class="container">
        <img id="title" src="../image/reservation_title.png" alt="예매 타이틀">
        <img id="semi_title" src="../image/reservation_semi_title1.png" alt="부속 타이틀">
        <div class="options">
            <div class="left">
                <div class="movie">
                    <button type="button">
                        <div style="line-height: 30px">
                            <img src="../image/age_12.png">
                            <p>어벤져스: 엔드게임</p>
                        </div>
                    </button>
                    <button type="button">
                        <div style="line-height: 30px">
                            <img src="../image/age_12.png">
                            <p>어린 의뢰인</p>
                        </div>
                    </button>
                    <button type="button">
                        <div style="line-height: 30px">
                            <img src="../image/age_total.png">
                            <p>뷰티풀 보이스</p>
                        </div>
                    </button>
                    <button type="button">
                        <div style="line-height: 30px">
                            <img src="../image/age_15.png">
                            <p>기생충</p>
                        </div>
                    </button>
                    <button type="button">
                        <div style="line-height: 30px">
                            <img src="../image/age_total.png">
                            <p>알라딘</p>
                        </div>
                    </button>
                    <button type="button">
                        <div style="line-height: 30px">
                            <img src="../image/age_15.png">
                            <p>더 보이</p>
                        </div>
                    </button>
                </div>
            </div>
            
            <div class="right">
                <div class="region">
                    <div id="raw1">
                        <button type="button" id="top-left">
                            	옥계동
                        </button>
                        <button type="button" id="top-right">
                            	인동
                        </button>
                    </div>
                    <div id="raw2">
                        <button type="button" id="bottom-left">
                            	양호동
                        </button>
                        <button type="button" id="bottom-right">
                            	구미역
                        </button>
                    </div>
                </div>

                <div class="calendar">
                    <table id="calendar">
                        <tr>
                            <td>
                                <button type="button" style="font-size: 25px" id="prevcal">◀</button>
                            </td>
                            <td colspan="5" id="calendarYM">날짜 선택</td>
                            <td>
                                <button type="button" style="font-size: 25px" id="nextcal">▶</button>
                            </td>
                        </tr>
                        <tr>
                            <td>일</td>
                            <td>월</td>
                            <td>화</td>
                            <td>수</td>
                            <td>목</td>
                            <td>금</td>
                            <td>토</td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
        <Input type="image" src="../image/cancel_btn.png" alt="취소 버튼" id="reservationcancel" onclick="return false;">
        <Input type="image" src="../image/next_btn.png" alt="다음 버튼" id="nextbtn" onclick="return false;">
    </div>
	
    <jsp:include page="/include/footer.jsp" flush="false"></jsp:include>
    
	<script src="../resources/js/rsv_1Script.js?ver=1.1">buildCalendar();</script>
</body>
</html>