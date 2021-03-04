var reviewTextchg = document.getElementsByClassName('reviewTextchg');
var reviewText = document.getElementsByClassName('reviewText');

var upbtns = document.getElementsByClassName('update_review_btn');
for(i=0; i<upbtns.length; i++) {
	upbtns[i].addEventListener('click', function() {
		for(i=0; i<reviewTextchg.length; i++) {
			reviewTextchg[i].style.display = "none";
		}
		for(i=0; i<reviewText.length; i++) {
			reviewText[i].style.display = "block";
		}
		
		var rt = document.getElementById('reviewText'+this.id);
		var t = document.getElementById('text'+this.id);
		rt.style.display = "block";
		t.style.display = "none";
	});
}

function update(i) {
    document.getElementById("updiv").innerHTML = "";

    var input = document.createElement("input");
    input.type = "text";
    input.name = "SELECTREVIEW";
    input.value = i;
    input.style.display = "none";
    document.getElementById("updiv").appendChild(input);

    document.getElementById("up").submit();
}
function deletef(i) {
    document.getElementById("dediv").innerHTML = "";

    var input = document.createElement("input");
    input.type = "text";
    input.name = "SELECTREVIEW";
    input.value = i;
    input.style.display = "none";
    document.getElementById("dediv").appendChild(input);

    document.getElementById("de").submit();
}