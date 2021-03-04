/**
 * 
 */
var req = document.getElementsByClassName("req");
var now = new Date();
buildCalendar(now);

document.getElementById("prevcal").addEventListener('click', function() {
	now = new Date(now.getFullYear(), now.getMonth() - 1, now.getDate());
    buildCalendar(now); 
});
document.getElementById("nextcal").addEventListener('click', function() {
	now = new Date(now.getFullYear(), now.getMonth() + 1, now.getDate());
    buildCalendar(now);
});
document.getElementById("reservationcancel").addEventListener('click', function() {
	location.href = '../src/main.jsp';
});
document.getElementById("nextbtn").addEventListener('click', function() {
	for(i=0; i<req.length; i++)
		if(req[i].value == "") {
			alert("모두 선택해 주세요");
			return;
		}
	
	document.getElementById("gonext").submit();
});

function buildCalendar(today) {
	document.getElementById("prevcal").disabled = true; // 이전 달 버튼 비활성화
	document.getElementById("nextcal").disabled = false;
    var startDate = new Date(today.getFullYear(), today.getMonth(), 1);
    var lastDate = new Date(today.getFullYear(), today.getMonth()+1, 0);
    var tblCalendar = document.getElementById("calendar");
    var tblCalendarYM = document.getElementById("calendarYM");
    tblCalendarYM.innerHTML = today.getFullYear() + "년 " + (today.getMonth() + 1) + "월";

    while (tblCalendar.rows.length > 2) { // 기존 달력 하단부 삭제
        tblCalendar.deleteRow(tblCalendar.rows.length - 1);
    }

    var row = tblCalendar.insertRow();
    var cnt = 0;
    for (i = 0; i < startDate.getDay(); i++) { // 앞단 빈칸 채우기
        cell = row.insertCell();
        cnt++;
    }
    for (i = 1; i <= lastDate.getDate(); i++) { // 날짜 채우기
        cell = row.insertCell();
        cell.innerHTML = `<button type="button" name="day" onclick="updateDate(${today.getFullYear()}+'-'+${today.getMonth()+1}+'-'+${i});">${i}</button>`;
        cnt++;

        if (cnt % 7 == 0) row = tblCalendar.insertRow();
    }
    for(;cnt % 7 != 0; cnt++) { // 뒷단 빈칸 채우기
        cell = row.insertCell();
    }
    
    var curDate = new Date();
    var twoWeek = new Date(curDate.getFullYear(), curDate.getMonth(), curDate.getDate()+14);
    var twLastDate = new Date(twoWeek.getFullYear(), twoWeek.getMonth()+1, 0);
    if(today.getTime() > curDate.getTime()) document.getElementById("prevcal").disabled = false;
    
    if(today.getMonth() == curDate.getMonth()) {
	    for(i = 1; i < today.getDate(); i++) { // 당일 전날까지 버튼 비활성화
	    	document.getElementsByName("day")[i-1].disabled = true;
	    }
	    for(i = today.getDate(); i <= lastDate.getDate(); i++) { // 당일 부터 버튼 활성화
	    	document.getElementsByName("day")[i-1].disabled = false;
	    }
    }
    
    if(today.getMonth() == twoWeek.getMonth()) { // 2주 뒤 부터 버튼 비활성화
    	document.getElementById("nextcal").disabled = true;
    	for(i = twoWeek.getDate(); i <= lastDate.getDate(); i++) {
    		document.getElementsByName("day")[i-1].disabled = true;
    	}
    }
}

function updateMovie(movie) {
	req[0].value = movie;
}
function updateRegion(region) {
	req[1].value = region;
}
function updateDate(date) {
	req[2].value = date;
}