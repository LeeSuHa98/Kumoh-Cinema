var logo = document.getElementById("logo");
var logoutbtn = document.getElementById("logoutbtn");
var mypage = document.getElementById("mypage");

logo.addEventListener('click', function() {
	location.href = '../src/main.jsp';
});
logoutbtn.addEventListener('click', function() {
	location.href = '../src/logout.jsp';
});