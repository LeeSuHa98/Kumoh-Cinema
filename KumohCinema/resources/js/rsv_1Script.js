/**
 * 
 */

var today = new Date();

function buildCalendar() {
	document.getElementById("prevcal").disabled = true;
    var startDate = new Date(today.getFullYear(), today.getMonth(), 1);
    var lastDate = new Date(today.getFullYear(), today.getMonth()+1, 0);
    var tblCalendar = document.getElementById("calendar");
    var tblCalendarYM = document.getElementById("calendarYM");
    tblCalendarYM.innerHTML = today.getFullYear() + "년 " + (today.getMonth() + 1) + "월";

    while (tblCalendar.rows.length > 2) {
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
        cell.innerHTML = `<button type="button" name="day" value="${i}">${i}</button>`;
        cnt++;

        if (cnt % 7 == 0) row = tblCalendar.insertRow();
    }
    
    for(;cnt % 7 != 0; cnt++) { // 뒷단 빈칸 채우기
        cell = row.insertCell();
    }
    
    if(today.getTime() > new Date().getTime()) document.getElementById("prevcal").disabled = false;
    
    if(today.getMonth()+1 == (new Date().getMonth()+1))
	    for(i = 1; i < today.getDate(); i++) { // 당일 전날까지 버튼 비활성화
	    	document.getElementsByName("day")[i-1].disabled = true;
	    }
}

document.getElementById("prevcal").addEventListener('click', function() {
    today = new Date(today.getFullYear(), today.getMonth() - 1, today.getDate());
    buildCalendar(); 
});
document.getElementById("nextcal").addEventListener('click', function() {
    today = new Date(today.getFullYear(), today.getMonth() + 1, today.getDate());
    //if(today.getTime() < new Date(new Date().getFullYear(), ))
    buildCalendar();
});
document.getElementById("reservationcancel").addEventListener('click', function() {
	location.href = '../src/main.jsp';
});
document.getElementById("nextbtn").addEventListener('click', function() {
	
})