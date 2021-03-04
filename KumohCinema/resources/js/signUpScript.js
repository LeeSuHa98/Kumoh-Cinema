document.getElementById("signupcancel").addEventListener('click', function() { // 메인 화면 call
	location.href = '../src/main.jsp';
});

document.getElementById("signupbtn").addEventListener('click', function() { // 양식 체크
	var name = document.getElementsByName("new_name")[0].value;
	var email = document.getElementsByName("new_email")[0].value;
	var pw = document.getElementsByName("new_pw")[0].value;
	var pw_chk = document.getElementsByName("new_pw_chk")[0].value;
	var tel = document.getElementsByName("new_tel")[0].value;
	
	if(name === "") { alert("이름을 입력해주세요"); return; }
	if(email === "") { alert("이메일을 입력해주세요"); return; }
	if(pw === "") { alert("비밀번호를 입력해주세요"); return; }
	if(pw_chk === "") { alert("비밀번호 확인을 입력해주세요"); return; }
	if(tel === "") { alert("전화번호를 입력해주세요"); return; }
	
	if(!isValidName(name)) { alert("이름은 2~16자의 특수문자를 제외한 문자 혹은 숫자로 이루어져야 합니다"); return; }
	if(!isValidEmail(email)) { alert("이메일 형식이 잘못되었습니다"); return; }
	if(!isValidPassWord(pw)) { alert("비밀번호는 8~16자의 대·소문자, 특수문자를 포함한 문자 혹은 숫자로 이루어져야 합니다"); return; }
	if(!isValidPhoneNumber(tel)) { alert("전화번호 11자를 정확히 입력해주세요"); return; }
	
	if(pw !== pw_chk) { alert("비밀번호와 비밀번호 확인이 일치하지 않습니다"); return; }
	
	document.getElementById("verify").submit(); // form 수동 submit, input inline onclick에서 return false 요구됨
});

function isValidName(n) {
	if(n.length<2 || n.length>16) return false;
    let regx = /[^a-zA-Z0-9|ㄱ-ㅎ|ㅏ-ㅣ|가-힣_]/;
    return !regx.test(name);
}
function isValidEmail(e) {
	if(e.match(/^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i)) return true;
    return false;
}
function isValidPassWord(p) {
    var num = p.search(/[0-9]/g);
    var eng = p.search(/[a-z]/ig);
    var spe = p.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
  
    if(p.length<8 || p.length>16) return false;
    if(p.search(/₩s/) != -1) return false;
    if(num<0 || eng<0 || spe<0) return false;
    return true;
}
function isValidPhoneNumber(t) {
	var arr = t.split(/[-\s]+/); // 하이픈(-)이나 공백 모두 검사
	if(arr.length>3) return false;
	
	var num = "";
	for(i=0; i<arr.length; i++)
		num = arr[i];
	if(num.length!=11) return false;
	
	return true;
}