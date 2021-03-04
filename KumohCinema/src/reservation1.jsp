<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>�ݿ� �ó׸�</title>
    <link rel="styleSheet" href="../resources/css/rsv_1Sheet.css">
</head>

<body>
    <jsp:include page="/include/header.jsp" flush="false"></jsp:include>
    
    <div class="container">
        <img id="title" src="../image/reservation_title.png" alt="���� Ÿ��Ʋ">
        <img id="semi_title" src="../image/reservation_semi_title1.png" alt="�μ� Ÿ��Ʋ">
        <div class="options">
            <div class="left">
                <div class="movie">
                    <button type="button">
                        <div style="line-height: 30px">
                            <img src="../image/age_12.png">
                            <p>�����: �������</p>
                        </div>
                    </button>
                    <button type="button">
                        <div style="line-height: 30px">
                            <img src="../image/age_12.png">
                            <p>� �Ƿ���</p>
                        </div>
                    </button>
                    <button type="button">
                        <div style="line-height: 30px">
                            <img src="../image/age_total.png">
                            <p>��ƼǮ ���̽�</p>
                        </div>
                    </button>
                    <button type="button">
                        <div style="line-height: 30px">
                            <img src="../image/age_15.png">
                            <p>�����</p>
                        </div>
                    </button>
                    <button type="button">
                        <div style="line-height: 30px">
                            <img src="../image/age_total.png">
                            <p>�˶��</p>
                        </div>
                    </button>
                    <button type="button">
                        <div style="line-height: 30px">
                            <img src="../image/age_15.png">
                            <p>�� ����</p>
                        </div>
                    </button>
                </div>
            </div>
            
            <div class="right">
                <div class="region">
                    <div id="raw1">
                        <button type="button" id="top-left">
                            	���赿
                        </button>
                        <button type="button" id="top-right">
                            	�ε�
                        </button>
                    </div>
                    <div id="raw2">
                        <button type="button" id="bottom-left">
                            	��ȣ��
                        </button>
                        <button type="button" id="bottom-right">
                            	���̿�
                        </button>
                    </div>
                </div>

                <div class="calendar">
                    <table id="calendar">
                        <tr>
                            <td>
                                <button type="button" style="font-size: 25px" id="prevcal">��</button>
                            </td>
                            <td colspan="5" id="calendarYM">��¥ ����</td>
                            <td>
                                <button type="button" style="font-size: 25px" id="nextcal">��</button>
                            </td>
                        </tr>
                        <tr>
                            <td>��</td>
                            <td>��</td>
                            <td>ȭ</td>
                            <td>��</td>
                            <td>��</td>
                            <td>��</td>
                            <td>��</td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
        <Input type="image" src="../image/cancel_btn.png" alt="��� ��ư" id="reservationcancel" onclick="return false;">
        <Input type="image" src="../image/next_btn.png" alt="���� ��ư" id="nextbtn" onclick="return false;">
    </div>
	
    <jsp:include page="/include/footer.jsp" flush="false"></jsp:include>
    
	<script src="../resources/js/rsv_1Script.js?ver=1.1">buildCalendar();</script>
</body>
</html>