<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>금오 시네마</title>
	<link rel="styleSheet" href="../resources/css/reserveSeat.css">
	
</head>
<body>
    <jsp:include page="/include/header.jsp" flush="false"></jsp:include>
    <div class="container">
        <img id="title" src="../image/reservation_title.png" alt="">
        <img id="semi_title" src="../image/reservation_semi_title2.png" alt="">
        <div class="semi_bar">
            <div class="choose_info">
                <h6 class="normal" style="display: inline">일반</h6>
                <select name="people" id="people">
                    <option value="0">0</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                    <option value="7">7</option>
                    <option value="8">8</option>
                    <option value="9">9</option>
                </select>
                <h6 style="display: inline">청소년</h6>
                <select name="younger" id="younger">
                    <option value="">0</option>
                    <option value="">1</option>
                    <option value="">2</option>
                    <option value="">3</option>
                    <option value="">4</option>
                    <option value="">5</option>
                    <option value="">6</option>
                    <option value="">7</option>
                    <option value="">8</option>
                    <option value="">9</option>
                </select>
            </div>
            <div class="contents">
                <div class="choose_time">
                    <span class="time" onclick="currentSlide(1)">12:50 <small>2관</small></span>
                    <span class="time" onclick="currentSlide(2)">15:00 <small>2관</small></span>
                    <span class="time" onclick="currentSlide(3)">18:20 <small>2관</small></span>
                    <span class="time" onclick="currentSlide(4)">21:40 <small>2관</small></span>
                </div>
                <div class="choose_seat">
                    <h6 id="screen">screen</h6>
                    <div class="seat_btn fade">
                        <div class="seat_a">
                            <button id="btn" onclick="">A1</button>
                            <button id="btn" onclick="">A2</button>
                            <button id="btn" onclick="">A3</button>
                            <button id="btn" onclick="">A4</button>
                            <button id="btn" onclick="">A5</button>
                            <button id="btn" onclick="">A6</button>
                            <button id="btn" onclick="">A7</button>
                            <button id="btn" onclick="">A8</button>
                        </div>
                        <div class="seat_b">
                            <button id="btn" onclick="">B1</button>
                            <button id="btn" onclick="">B2</button>
                            <button id="btn" onclick="">B3</button>
                            <button id="btn" onclick="">B4</button>
                            <button id="btn" onclick="">B5</button>
                            <button id="btn" onclick="">B6</button>
                            <button id="btn" onclick="">B7</button>
                            <button id="btn" onclick="">B8</button>
                        </div>
                        <div class="seat_c">
                            <button id="btn" onclick="">C1</button>
                            <button id="btn" onclick="">C2</button>
                            <button id="btn" onclick="">C3</button>
                            <button id="btn" onclick="">C4</button>
                            <button id="btn" onclick="">C5</button>
                            <button id="btn" onclick="">C6</button>
                            <button id="btn" onclick="">C7</button>
                            <button id="btn" onclick="">C8</button>
                        </div>
                        <div class="seat_d">
                            <button id="btn" onclick="">D1</button>
                            <button id="btn" onclick="">D2</button>
                            <button id="btn" onclick="">D3</button>
                            <button id="btn" onclick="">D4</button>
                            <button id="btn" onclick="">D5</button>
                            <button id="btn" onclick="">D6</button>
                            <button id="btn" onclick="">D7</button>
                            <button id="btn" onclick="">D8</button>
                        </div>
                        <div class="seat_e">
                            <button id="btn" onclick="">E1</button>
                            <button id="btn" onclick="">E2</button>
                            <button id="btn" onclick="">E3</button>
                            <button id="btn" onclick="">E4</button>
                            <button id="btn" onclick="">E5</button>
                            <button id="btn" onclick="">E6</button>
                            <button id="btn" onclick="">E7</button>
                            <button id="btn" onclick="">E8</button>
                        </div>
                    </div>
                    <div class="seat_btn fade">
                        <div class="seat_a">
                            <button id="btn" onclick="">A1</button>
                            <button id="btn" onclick="">A2</button>
                            <button id="btn" onclick="">A3</button>
                            <button id="btn" onclick="">A4</button>
                            <button id="btn" onclick="">A5</button>
                            <button id="btn" onclick="">A6</button>
                            <button id="btn" onclick="">A7</button>
                            <button id="btn" onclick="">A8</button>
                        </div>
                        <div class="seat_b">
                            <button id="btn" onclick="">B1</button>
                            <button id="btn" onclick="">B2</button>
                            <button id="btn" onclick="">B3</button>
                            <button id="btn" onclick="">B4</button>
                            <button id="btn" onclick="">B5</button>
                            <button id="btn" onclick="">B6</button>
                            <button id="btn" onclick="">B7</button>
                            <button id="btn" onclick="">B8</button>
                        </div>
                        <div class="seat_c">
                            <button id="btn" onclick="">C1</button>
                            <button id="btn" onclick="">C2</button>
                            <button id="btn" onclick="">C3</button>
                            <button id="btn" onclick="">C4</button>
                            <button id="btn" onclick="">C5</button>
                            <button id="btn" onclick="">C6</button>
                            <button id="btn" onclick="">C7</button>
                            <button id="btn" onclick="">C8</button>
                        </div>
                        <div class="seat_d">
                            <button id="btn" onclick="">D1</button>
                            <button id="btn" onclick="">D2</button>
                            <button id="btn" onclick="">D3</button>
                            <button id="btn" onclick="">D4</button>
                            <button id="btn" onclick="">D5</button>
                            <button id="btn" onclick="">D6</button>
                            <button id="btn" onclick="">D7</button>
                            <button id="btn" onclick="">D8</button>
                        </div>
                        <div class="seat_e">
                            <button id="btn" onclick="">E1</button>
                            <button id="btn" onclick="">E2</button>
                            <button id="btn" onclick="">E3</button>
                            <button id="btn" onclick="">E4</button>
                            <button id="btn" onclick="">E5</button>
                            <button id="btn" onclick="">E6</button>
                            <button id="btn" onclick="">E7</button>
                            <button id="btn" onclick="">E8</button>
                        </div>
                    </div>
                    <div class="seat_btn fade">
                        <div class="seat_a">
                            <button id="btn" onclick="">A1</button>
                            <button id="btn" onclick="">A2</button>
                            <button id="btn" onclick="">A3</button>
                            <button id="btn" onclick="">A4</button>
                            <button id="btn" onclick="">A5</button>
                            <button id="btn" onclick="">A6</button>
                            <button id="btn" onclick="">A7</button>
                            <button id="btn" onclick="">A8</button>
                        </div>
                        <div class="seat_b">
                            <button id="btn" onclick="">B1</button>
                            <button id="btn" onclick="">B2</button>
                            <button id="btn" onclick="">B3</button>
                            <button id="btn" onclick="">B4</button>
                            <button id="btn" onclick="">B5</button>
                            <button id="btn" onclick="">B6</button>
                            <button id="btn" onclick="">B7</button>
                            <button id="btn" onclick="">B8</button>
                        </div>
                        <div class="seat_c">
                            <button id="btn" onclick="">C1</button>
                            <button id="btn" onclick="">C2</button>
                            <button id="btn" onclick="">C3</button>
                            <button id="btn" onclick="">C4</button>
                            <button id="btn" onclick="">C5</button>
                            <button id="btn" onclick="">C6</button>
                            <button id="btn" onclick="">C7</button>
                            <button id="btn" onclick="">C8</button>
                        </div>
                        <div class="seat_d">
                            <button id="btn" onclick="">D1</button>
                            <button id="btn" onclick="">D2</button>
                            <button id="btn" onclick="">D3</button>
                            <button id="btn" onclick="">D4</button>
                            <button id="btn" onclick="">D5</button>
                            <button id="btn" onclick="">D6</button>
                            <button id="btn" onclick="">D7</button>
                            <button id="btn" onclick="">D8</button>
                        </div>
                        <div class="seat_e">
                            <button id="btn" onclick="">E1</button>
                            <button id="btn" onclick="">E2</button>
                            <button id="btn" onclick="">E3</button>
                            <button id="btn" onclick="">E4</button>
                            <button id="btn" onclick="">E5</button>
                            <button id="btn" onclick="">E6</button>
                            <button id="btn" onclick="">E7</button>
                            <button id="btn" onclick="">E8</button>
                        </div>
                    </div>
                    <div class="seat_btn fade">
                        <div class="seat_a">
                            <button id="btn" onclick="">A1</button>
                            <button id="btn" onclick="">A2</button>
                            <button id="btn" onclick="">A3</button>
                            <button id="btn" onclick="">A4</button>
                            <button id="btn" onclick="">A5</button>
                            <button id="btn" onclick="">A6</button>
                            <button id="btn" onclick="">A7</button>
                            <button id="btn" onclick="">A8</button>
                        </div>
                        <div class="seat_b">
                            <button id="btn" onclick="">B1</button>
                            <button id="btn" onclick="">B2</button>
                            <button id="btn" onclick="">B3</button>
                            <button id="btn" onclick="">B4</button>
                            <button id="btn" onclick="">B5</button>
                            <button id="btn" onclick="">B6</button>
                            <button id="btn" onclick="">B7</button>
                            <button id="btn" onclick="">B8</button>
                        </div>
                        <div class="seat_c">
                            <button id="btn" onclick="">C1</button>
                            <button id="btn" onclick="">C2</button>
                            <button id="btn" onclick="">C3</button>
                            <button id="btn" onclick="">C4</button>
                            <button id="btn" onclick="">C5</button>
                            <button id="btn" onclick="">C6</button>
                            <button id="btn" onclick="">C7</button>
                            <button id="btn" onclick="">C8</button>
                        </div>
                        <div class="seat_d">
                            <button id="btn" onclick="">D1</button>
                            <button id="btn" onclick="">D2</button>
                            <button id="btn" onclick="">D3</button>
                            <button id="btn" onclick="">D4</button>
                            <button id="btn" onclick="">D5</button>
                            <button id="btn" onclick="">D6</button>
                            <button id="btn" onclick="">D7</button>
                            <button id="btn" onclick="">D8</button>
                        </div>
                        <div class="seat_e">
                            <button id="btn" onclick="">E1</button>
                            <button id="btn" onclick="">E2</button>
                            <button id="btn" onclick="">E3</button>
                            <button id="btn" onclick="">E4</button>
                            <button id="btn" onclick="">E5</button>
                            <button id="btn" onclick="">E6</button>
                            <button id="btn" onclick="">E7</button>
                            <button id="btn" onclick="">E8</button>
                        </div>
                    </div>
                </div>
                <div class="checkSeat">
                    <span style="color: #3F48CC; text-align: center; font-size: 15px">선택하신 좌석</span>
                    <div id="field"></div>
                    <span id="price">총 가격 : </span>
                    <div id="ppppp"></div>
                </div>
            </div>
        </div>
    </div>
    <div class="section">
        <img id="cancel_btn" src="../image/cancel_btn.png" alt="">
        <img id="reservation_btn" src="../image/reservation_btn.png" alt="">
    </div>
     <jsp:include page="/include/footer.jsp" flush="false"></jsp:include>
    
	<script type="text/javascript" src="../resources/js/reserveSeat.js" charset="UTF-8"></script>
</body>
</html>