// Write a function that returns the longest word/phrase of an array of words/phrases.
// Define an array of words/phrases; store it in a variable.
// Create a function that passes an array as a parameter.
// Use .length to determine the length of the items in the array.
// Loop through the array using .length and the index number of the longest array item to pick out the longest item.

var long_array = ["big", "bigger", "biggest", "biggerer", "gigantorest"];
var determine_length = ["long phrase","longest phrase","longer phrase"];
var huge = ["hola", "hello", "konichiwa"];

function longest(array) {
	var length = 0;
	var longest;
	for (var i = 0; i < array.length; i++) {
		if (array[i].length > length) {
			length = array[i].length;
			longest = array[i];
		}
	}
	console.log(longest);
};

longest(long_array);
longest(determine_length);
longest(huge);

// Write a function that takes two objects and checks to see if the objects share at least one key-value pair.
// Define an object with a couple key-value pairs; store it in a variable.
// Create a function that passes two objects and a string as parameters.
// Create an array out of the keys/values of each object so they can be searched through.
// Use .includes on the arrays of the keys/values and compare them for a match.

var revenant_movie = {movie: "Revenant", award: "Oscar"}
var room_movie = {movie: "Room", award: "Oscar"}
var person = {name: "Oscar", age: 30}

function find_match(hash1, hash2, string) {
	discovery1 = Object.keys(hash1).map(function(key) {
		return hash1[key];
		});
	console.log(discovery1)
	
	discovery2 = Object.keys(hash2).map(function(key) {
		return hash2[key];
		});
	console.log(discovery2)
	
	if (discovery1.includes(string) && discovery2.includes(string)) {
		console.log(true);
	} else {
		console.log(false);
	}
};

find_match(revenant_movie, room_movie, "Revenant");
find_match(revenant_movie, room_movie, "Oscar");
find_match(person, room_movie, "Oscar");






