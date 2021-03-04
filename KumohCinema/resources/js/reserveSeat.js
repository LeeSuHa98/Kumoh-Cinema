var MovieIndex = 1;
movieSlides(MovieIndex);

function currentSlide(n) {
    movieSlides(MovieIndex = n);
}
function movieSlides(n) {
    var i;
    var movies = document.getElementsByClassName("seat_btn");
    var time = document.getElementsByClassName("time");
    if (n > movies.length) {MovieIndex = 1}    
    if (n < 1) {MovieIndex = movies.length}
    for (i = 0; i < movies.length; i++) {
        movies[i].style.display = "none";  
    }
    for (i = 0; i < time.length; i++) {
        time[i].className = time[i].className.replace(" activeMovie", "");
    }
    movies[MovieIndex-1].style.display = "block";  
    time[MovieIndex-1].className += " activeMovie";
}

var cols = document.querySelectorAll('.seat_btn #btn'); 

[].forEach.call(cols,function(col){
    col.addEventListener("click",click,false);
});

var aa = 0;
var peoplePrice = 10000;
var youngerPrice = 5000;
function click() {
    var selectPeople = document.getElementById("people");
    var People_text = parseInt(selectPeople.options[selectPeople.selectedIndex].text);

    var selectYounger = document.getElementById("younger");
    var younger_text = parseInt(selectYounger.options[selectYounger.selectedIndex].text);

    var numberOfAudience = People_text + younger_text;
    aa++;
    var d = document.createElement("div");
    
    if(aa == numberOfAudience){
        var totalPrice = peoplePrice*People_text + youngerPrice*younger_text;
        var pp  = document.createElement("div");
        // pp.innerHTML = totalPrice;
        document.getElementById("price").append(totalPrice);
    }
    if(aa > numberOfAudience){
        window.alert("선택하신 인원수는" +(aa -1)+"입니다.");
        return;
    }
    d.innerHTML = this.innerHTML;
    document.getElementById("field").appendChild(d);
   
    return;
}