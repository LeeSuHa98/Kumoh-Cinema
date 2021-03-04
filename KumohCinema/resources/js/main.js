var slideIndex = 0;
showSlides();

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