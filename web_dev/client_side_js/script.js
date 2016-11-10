console.log("This works!");

function undermine(event) {
	console.log("You clicked.");
	console.log(event);
	event.target.style = "text-transform:lowercase;";
}

function addRedBorder(event) {
	console.log("You clicked.");
	console.log(event);
	event.target.style.border = "10px solid red";
}

function hide(event) {
	console.log("You clicked.");
	console.log(event);
	event.target.style.visibility = "hidden";
}

function emphasisMajor(event) {
	console.log("You clicked.");
	console.log(event);
	event.target.style = "text-transform:uppercase;";
	event.target.style.border = "10px solid pink";
}

var header = document.getElementById("small");
header.addEventListener("click", undermine);

var photo = document.getElementById("oh-hello-photo");
photo.addEventListener("click", addRedBorder);

var list = document.getElementById("bye-bye");
list.addEventListener("click", hide);

var word = document.getElementById("big");
word.addEventListener("click", emphasisMajor);