/**
 * 
 */
var slideIndex = 0;
showSlides();

document.getElementById("reserve").addEventListener('click', function() {
	location.href = '../src/movieList.jsp';
});

document.getElementById("comment1").addEventListener('click', function() {
	document.getElementById("form1").submit();
});
document.getElementById("comment2").addEventListener('click', function() {
	document.getElementById("form2").submit();
});
document.getElementById("comment3").addEventListener('click', function() {
	document.getElementById("form3").submit();
});
document.getElementById("comment4").addEventListener('click', function() {
	document.getElementById("form4").submit();
});
document.getElementById("comment5").addEventListener('click', function() {
	document.getElementById("form5").submit();
});
document.getElementById("comment6").addEventListener('click', function() {
	document.getElementById("form6").submit();
});
document.getElementById("comment7").addEventListener('click', function() {
	document.getElementById("form7").submit();
});
document.getElementById("comment8").addEventListener('click', function() {
	document.getElementById("form8").submit();
});
document.getElementById("comment9").addEventListener('click', function() {
	document.getElementById("form9").submit();
});
document.getElementById("comment10").addEventListener('click', function() {
	document.getElementById("form10").submit();
});
document.getElementById("comment11").addEventListener('click', function() {
	document.getElementById("form11").submit();
});
document.getElementById("comment12").addEventListener('click', function() {
	document.getElementById("form12").submit();
});

function showSlides() {
    var i;
    var slides = document.getElementsByClassName("dd_show");
    var dots = document.getElementsByClassName("dot");
    for (i = 0; i < slides.length; i++) {
       slides[i].style.display = "none";  
    }
    slideIndex++;
    if (slideIndex > slides.length) {slideIndex = 1}    
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    slides[slideIndex-1].style.display = "block";  
    dots[slideIndex-1].className += " active";
    setTimeout(showSlides, 2000); // Change image every 2 seconds
}

var MovieIndex = 1;
movieSlides(MovieIndex);

function plusSlides(n) {
  movieSlides(MovieIndex += n);
}

function currentSlide(n) {
  movieSlides(MovieIndex = n);
}

function movieSlides(n) {
  var i;
  var movies = document.getElementsByClassName("sm_slide");
  var btn = document.getElementsByClassName("btn");
  if (n > movies.length) {MovieIndex = 1}    
  if (n < 1) {MovieIndex = movies.length}
  for (i = 0; i < movies.length; i++) {
      movies[i].style.display = "none";  
  }
  for (i = 0; i < btn.length; i++) {
      btn[i].className = btn[i].className.replace(" activeMovie", "");
  }
  movies[MovieIndex-1].style.display = "block";  
  btn[MovieIndex-1].className += " activeMovie";
}