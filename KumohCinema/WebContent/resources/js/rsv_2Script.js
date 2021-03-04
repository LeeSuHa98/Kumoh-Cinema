var timeIndex = 1;
timeSlides(timeIndex);

var total = 0;
var peoplePrice = 10000;
var youngerPrice = 5000;

var input = document.createElement("input");
input.type = "text";
input.name = "ONTIME";
input.value = "12:50";
input.style.display = "none";
document.getElementById("field").appendChild(input);

var cols = document.querySelectorAll('.seats #btn'); 
[].forEach.call(cols, function(col) { // �� �¼� �̺�Ʈ ������ ���
    col.addEventListener("click", click);
});

document.getElementById("rescancel").addEventListener('click', function() {
	location.href = '../src/main.jsp';
});

function currentSlide(n) {
    document.getElementById("field").innerHTML = "";
    document.getElementById("price").innerHTML = "�� ���� : ";
    total = 0;
    for(i=0; i<cols.length; i++) cols[i].disabled = false; // �¼� ��ư Ȱ��ȭ

    var input = document.createElement("input");
    input.type = "text";
    input.name = "ONTIME";
    input.value = document.getElementsByClassName("time")[n-1].innerHTML;
    input.style.display = "none";
    document.getElementById("field").appendChild(input);
    
	timeSlides(timeIndex=n);
}

function timeSlides(n) {
    var i;
    var seats = document.getElementsByClassName("seats");
    var time = document.getElementsByClassName("time");
    
    if (n > seats.length) timeIndex = 1;
    if (n < 1) timeIndex = seats.length;
    
    for (i = 0; i < seats.length; i++) {
    	seats[i].style.display = "none";  
    }
    for (i = 0; i < time.length; i++) {
        time[i].className = time[i].className.replace(" activeTime", "");
    }
    seats[timeIndex-1].style.display = "block";  
    time[timeIndex-1].className += " activeTime";
}

function click() {
    var selectPeople = document.getElementById("people");
    var selectYounger = document.getElementById("younger");
    var People_text = parseInt(selectPeople.options[selectPeople.selectedIndex].text);
    var younger_text = parseInt(selectYounger.options[selectYounger.selectedIndex].text);

    var numberOfAudience = People_text + younger_text;
    
    if(total+1 > numberOfAudience) {
        alert("������ �ο� ��(" +total+"��) ��ŭ�� �¼��� ������ �ֽʽÿ�");
        return;
    }
    total++;
    
    if(total == numberOfAudience) {
        var totalPrice = peoplePrice*People_text + youngerPrice*younger_text;
        document.getElementById("price").innerHTML = "�� ���� : ";
        document.getElementById("price").append(totalPrice+"��");
    }
    var d = document.createElement("input");
    d.className = "selectedSeats";
    d.type = "text";
    d.name = "SEAT"+total;
    d.value = this.innerHTML;
    d.readOnly = true;
    d.size = 2;
    document.getElementById("field").appendChild(d);
    
    this.disabled = true;
   
    return;
}