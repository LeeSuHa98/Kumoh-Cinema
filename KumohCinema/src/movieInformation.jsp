<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>�ݿ� �ó׸�</title>
    <link rel="styleSheet" href="../resources/css/movieInformationSheet.css">
</head>
<body>
	<jsp:include page="/include/header.jsp" flush="false"></jsp:include>
	<section class="container">
        <!--��ȭ ����-->
        <article class="movieHead">
            <!--��ȭ �̹��� ����-->
            <div class="bigPoster">
                <img src="../image/BigPoster.jpg">
            </div>
            <!--������+��ȭ����-->
            <div class="smallPoster">
                <!--������-->
                <div id="poster">
                    <img src="../image/SmallPoster.jpg">
                </div>
                <!--��ȭ����-->
                <div id="movieInfo">
                    <h1>�����</h1>
                    <h2>2019 �� ��� �� �ѱ�</h2>
                    <h2 id="movieDirector">����ȣ ����</h2>
                </div>
            </div>
        </article>
        <article class="movieBody">
            <!--�⺻����-->
            <div class="stdInformation">
                <h2 class="title">�⺻ ����</h2>
                <dl>
                    <dt>�����</dt>
                    <dd>2019 �� �ѱ� �� ���</dd>
                    <dd>2�ð� 11��</dd>
                    <br>
                    <dd>  ���� ����� �����á��� �峲 ����졯�� ��� ���� ������ ���� ���ڻ��塯�� ���� ���� ���̸鼭 ���۵� �� ������ ������ ������ �� ���� ������� �������� �̾߱�</dd>
                </dl>
            </div>
            <!--�⿬/����-->
            <div class="cast">
                <h2 class="title">�⿬/����</h2>
                <div>
                    <ul class="castList">
                        <li>
                            <div class="roundImg">
                                <img class="Img" src="../image/movieImage/bong.jpg">
                            </div>
                            <div class="castInfo">
                                <div>����ȣ</div>
                                <div>����</div>
                            </div>
                        </li>
                        <li>
                            <div class="roundImg">
                                <img class="Img" src="../image/movieImage/song.jpg">
                            </div>
                            <div class="castInfo">
                                <div>�۰�ȣ</div>
                                <div>�ֿ�</div>
                            </div>
                        </li>
                        <li>
                            <div class="roundImg">
                                <img class="Img" src="../image/movieImage/jang.jpg">
                            </div>
                            <div class="castInfo">
                                <div>������</div>
                                <div>�ֿ�</div>
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
                                <div>�ֿ��</div>
                                <div>�ֿ�</div>
                            </div>
                        </li>
                        <li>
                            <div class="roundImg">
                                <img class="Img" src="../image/movieImage/park.jpg">
                            </div>
                            <div class="castInfo">
                                <div>�ڼҴ�</div>
                                <div>�ֿ�</div>
                            </div>
                        </li>
                        <li>
                            <div class="roundImg">
                                <img class="Img" src="../image/movieImage/lee.jpg">
                            </div>
                            <div class="castInfo">
                                <div>�̼���</div>
                                <div>����</div>
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
                                <div>������</div>
                                <div>����</div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            
            <!--�ı���-->
            <div class="reviewList">
                <h2 class="title">����</h2>
                <div class="review">
                    <div>
                        <div class="reviewer">
                         	   ������
                        </div>
                        <div class="reviewText">
 			                           Ȳ�������� �����մϴ�.
                        </div>
                    </div>
                    <div>
                        <div class="reviewer">
                            Noh
                        </div>
                        <div class="reviewText">
 			                           �;�
                        </div>
                    </div>
                    <div>
                        <div class="reviewer">
                            hyyy
                        </div>
                        <div class="reviewText">
                   		         �㸮�� �ʹ� ���Ŀ�.....
                        </div>
                    </div>
                    <div>
                        <div class="reviewer">
             		               ������
                        </div>
                        <div class="reviewText">
              		              ��������
                        </div>
                    </div>
                </div>
            </div>
            <!--�ı��ۼ�-->
            <div class="reviewForm">
                <h2 class="title">�����ۼ�</h2>
                <textarea style="width:98%" rows=8></textarea>
                <Input type="image" id="review_btn" src="../image/review_btn.png" alt="�ı��ۼ� ��ư">
            </div>
        </article>
    </section>
	<jsp:include page="/include/footer.jsp" flush="false"></jsp:include>
</body>
</html>
<script src="../resources/js/registerReview.js"></script>