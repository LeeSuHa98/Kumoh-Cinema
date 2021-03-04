<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String movieTitle = request.getParameter("MOVIE");
	String region = request.getParameter("REGION");
	String date = request.getParameter("DATE");
	
	session.setAttribute("movieTitle",movieTitle);
	session.setAttribute("region",region);
	session.setAttribute("date",date);
%>   
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>금오 시네마</title>
	<link rel="styleSheet" href="../resources/css/rsv_2Sheet.css">
</head>
<body>
    <jsp:include page="/include/header.jsp" flush="false"></jsp:include>
    
    <div class="container">
    	<form action="reserve.jsp" method="get" accept-charset="UTF-8">
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
            </div>
            <div class="contents">
                <div class="choose_time">
                    <span class="time" onclick="currentSlide(1)">12:50</span>
                    <span class="time" onclick="currentSlide(2)">15:00</span>
                    <span class="time" onclick="currentSlide(3)">18:20</span>
                    <span class="time" onclick="currentSlide(4)">21:40</span>
                </div>
                <div class="choose_seat">
                    <h6 id="screen">screen</h6>
                    <div class="seats fade">
                        <div class="seat_a">
                            <button type="button" id="btn">A1</button>
                            <button type="button" id="btn">A2</button>
                            <button type="button" id="btn">A3</button>
                            <button type="button" id="btn">A4</button>
                            <button type="button" id="btn">A5</button>
                            <button type="button" id="btn">A6</button>
                            <button type="button" id="btn">A7</button>
                            <button type="button" id="btn">A8</button>
                        </div>
                        <div class="seat_b">
                            <button type="button" id="btn">B1</button>
                            <button type="button" id="btn">B2</button>
                            <button type="button" id="btn">B3</button>
                            <button type="button" id="btn">B4</button>
                            <button type="button" id="btn">B5</button>
                            <button type="button" id="btn">B6</button>
                            <button type="button" id="btn">B7</button>
                            <button type="button" id="btn">B8</button>
                        </div>
                        <div class="seat_c">
                            <button type="button" id="btn">C1</button>
                            <button type="button" id="btn">C2</button>
                            <button type="button" id="btn">C3</button>
                            <button type="button" id="btn">C4</button>
                            <button type="button" id="btn">C5</button>
                            <button type="button" id="btn">C6</button>
                            <button type="button" id="btn">C7</button>
                            <button type="button" id="btn">C8</button>
                        </div>
                        <div class="seat_d">
                            <button type="button" id="btn">D1</button>
                            <button type="button" id="btn">D2</button>
                            <button type="button" id="btn">D3</button>
                            <button type="button" id="btn">D4</button>
                            <button type="button" id="btn">D5</button>
                            <button type="button" id="btn">D6</button>
                            <button type="button" id="btn">D7</button>
                            <button type="button" id="btn">D8</button>
                        </div>
                        <div class="seat_e">
                            <button type="button" id="btn">E1</button>
                            <button type="button" id="btn">E2</button>
                            <button type="button" id="btn">E3</button>
                            <button type="button" id="btn">E4</button>
                            <button type="button" id="btn">E5</button>
                            <button type="button" id="btn">E6</button>
                            <button type="button" id="btn">E7</button>
                            <button type="button" id="btn">E8</button>
                        </div>
                    </div>
                    <div class="seats fade">
                        <div class="seat_a">
                            <button type="button" id="btn">A1</button>
                            <button type="button" id="btn">A2</button>
                            <button type="button" id="btn">A3</button>
                            <button type="button" id="btn">A4</button>
                            <button type="button" id="btn">A5</button>
                            <button type="button" id="btn">A6</button>
                            <button type="button" id="btn">A7</button>
                            <button type="button" id="btn">A8</button>
                        </div>
                        <div class="seat_b">
                            <button type="button" id="btn">B1</button>
                            <button type="button" id="btn">B2</button>
                            <button type="button" id="btn">B3</button>
                            <button type="button" id="btn">B4</button>
                            <button type="button" id="btn">B5</button>
                            <button type="button" id="btn">B6</button>
                            <button type="button" id="btn">B7</button>
                            <button type="button" id="btn">B8</button>
                        </div>
                        <div class="seat_c">
                            <button type="button" id="btn">C1</button>
                            <button type="button" id="btn">C2</button>
                            <button type="button" id="btn">C3</button>
                            <button type="button" id="btn">C4</button>
                            <button type="button" id="btn">C5</button>
                            <button type="button" id="btn">C6</button>
                            <button type="button" id="btn">C7</button>
                            <button type="button" id="btn">C8</button>
                        </div>
                        <div class="seat_d">
                            <button type="button" id="btn">D1</button>
                            <button type="button" id="btn">D2</button>
                            <button type="button" id="btn">D3</button>
                            <button type="button" id="btn">D4</button>
                            <button type="button" id="btn">D5</button>
                            <button type="button" id="btn">D6</button>
                            <button type="button" id="btn">D7</button>
                            <button type="button" id="btn">D8</button>
                        </div>
                        <div class="seat_e">
                            <button type="button" id="btn">E1</button>
                            <button type="button" id="btn">E2</button>
                            <button type="button" id="btn">E3</button>
                            <button type="button" id="btn">E4</button>
                            <button type="button" id="btn">E5</button>
                            <button type="button" id="btn">E6</button>
                            <button type="button" id="btn">E7</button>
                            <button type="button" id="btn">E8</button>
                        </div>
                    </div>
                    <div class="seats fade">
                        <div class="seat_a">
                            <button type="button" id="btn">A1</button>
                            <button type="button" id="btn">A2</button>
                            <button type="button" id="btn">A3</button>
                            <button type="button" id="btn">A4</button>
                            <button type="button" id="btn">A5</button>
                            <button type="button" id="btn">A6</button>
                            <button type="button" id="btn">A7</button>
                            <button type="button" id="btn">A8</button>
                        </div>
                        <div class="seat_b">
                            <button type="button" id="btn">B1</button>
                            <button type="button" id="btn">B2</button>
                            <button type="button" id="btn">B3</button>
                            <button type="button" id="btn">B4</button>
                            <button type="button" id="btn">B5</button>
                            <button type="button" id="btn">B6</button>
                            <button type="button" id="btn">B7</button>
                            <button type="button" id="btn">B8</button>
                        </div>
                        <div class="seat_c">
                            <button type="button" id="btn">C1</button>
                            <button type="button" id="btn">C2</button>
                            <button type="button" id="btn">C3</button>
                            <button type="button" id="btn">C4</button>
                            <button type="button" id="btn">C5</button>
                            <button type="button" id="btn">C6</button>
                            <button type="button" id="btn">C7</button>
                            <button type="button" id="btn">C8</button>
                        </div>
                        <div class="seat_d">
                            <button type="button" id="btn">D1</button>
                            <button type="button" id="btn">D2</button>
                            <button type="button" id="btn">D3</button>
                            <button type="button" id="btn">D4</button>
                            <button type="button" id="btn">D5</button>
                            <button type="button" id="btn">D6</button>
                            <button type="button" id="btn">D7</button>
                            <button type="button" id="btn">D8</button>
                        </div>
                        <div class="seat_e">
                            <button type="button" id="btn">E1</button>
                            <button type="button" id="btn">E2</button>
                            <button type="button" id="btn">E3</button>
                            <button type="button" id="btn">E4</button>
                            <button type="button" id="btn">E5</button>
                            <button type="button" id="btn">E6</button>
                            <button type="button" id="btn">E7</button>
                            <button type="button" id="btn">E8</button>
                        </div>
                    </div>
                    <div class="seats fade">
                        <div class="seat_a">
                            <button type="button" id="btn">A1</button>
                            <button type="button" id="btn">A2</button>
                            <button type="button" id="btn">A3</button>
                            <button type="button" id="btn">A4</button>
                            <button type="button" id="btn">A5</button>
                            <button type="button" id="btn">A6</button>
                            <button type="button" id="btn">A7</button>
                            <button type="button" id="btn">A8</button>
                        </div>
                        <div class="seat_b">
                            <button type="button" id="btn">B1</button>
                            <button type="button" id="btn">B2</button>
                            <button type="button" id="btn">B3</button>
                            <button type="button" id="btn">B4</button>
                            <button type="button" id="btn">B5</button>
                            <button type="button" id="btn">B6</button>
                            <button type="button" id="btn">B7</button>
                            <button type="button" id="btn">B8</button>
                        </div>
                        <div class="seat_c">
                            <button type="button" id="btn">C1</button>
                            <button type="button" id="btn">C2</button>
                            <button type="button" id="btn">C3</button>
                            <button type="button" id="btn">C4</button>
                            <button type="button" id="btn">C5</button>
                            <button type="button" id="btn">C6</button>
                            <button type="button" id="btn">C7</button>
                            <button type="button" id="btn">C8</button>
                        </div>
                        <div class="seat_d">
                            <button type="button" id="btn">D1</button>
                            <button type="button" id="btn">D2</button>
                            <button type="button" id="btn">D3</button>
                            <button type="button" id="btn">D4</button>
                            <button type="button" id="btn">D5</button>
                            <button type="button" id="btn">D6</button>
                            <button type="button" id="btn">D7</button>
                            <button type="button" id="btn">D8</button>
                        </div>
                        <div class="seat_e">
                            <button type="button" id="btn">E1</button>
                            <button type="button" id="btn">E2</button>
                            <button type="button" id="btn">E3</button>
                            <button type="button" id="btn">E4</button>
                            <button type="button" id="btn">E5</button>
                            <button type="button" id="btn">E6</button>
                            <button type="button" id="btn">E7</button>
                            <button type="button" id="btn">E8</button>
                        </div>
                    </div>
                </div>
                <div class="checkSeat">
                    <span style="color: #3F48CC; text-align: center; font-size: 15px">선택하신 좌석</span>
                    <div id="field"></div>
                    <div id="fff" style="display: none"></div>
                    <span id="price">총 가격 : </span>
                </div>
            </div>
        </div>
	    <Input type="image" src="../image/cancel_btn.png" alt="취소 버튼" id="rescancel" onclick="return false;">
	    <Input type="image" src="../image/reservation_btn.png" alt="예매 버튼" id="resbtn">
	    </form>
    </div>
    
    <jsp:include page="/include/footer.jsp" flush="false"></jsp:include>
    
	<script type="text/javascript" src="../resources/js/rsv_2Script.js?ver=2.0"></script>
</body>
</html>