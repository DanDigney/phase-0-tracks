var greeting = document.getElementsByClassName("header");

var x = greeting[0];

x.style.border = "5px dashed red";

var y = greeting[1];

function clicker(event) {
	event.target.style.border = "3px dashed pink"
};

y.addEventListener("click", clicker);
