// Write a function that returns the longest word/phrase of an array of words/phrases.
// Define an array of words/phrases; store it in a variable.
// Create a function that passes an array as the parameter.
// Use .length to determine the length of the items in the array.
// Loop through the array using .length and the index number of the longest array item to pick out the longest item.

var long_array = ["big", "bigger", "biggest", "biggerer", "gigantorest"];
var determine_length = ["long phrase","longest phrase","longer phrase"];
var huge = ["hola", "hello", "konichiwa"];

function longest(construct) {
	var length = 0;
	var longest;
	for (var i = 0; i < construct.length; i++) {
		if (construct[i].length > length) {
			length = construct[i].length;
			longest = construct[i];
		}
	}
	return longest;
};

console.log(longest(long_array));
console.log(longest(determine_length));
console.log(longest(huge));

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

// Write a function that takes an integer for length, and builds and returns an array of strings of the given length.
// Create a function that passes an integer as the parameter.
// Within the function, store an empty array in a variable.
// Depending on the value of the parameter, have the function add that many strings to the empty array.
// Generate strings of random lengths by researching.
// Pass the new array back through the first function as a parameter to get the longest string of the new array.

function array_builder(integer) {
	var construct = []
	character_set = "abcdefghijklmnopqrstuvwxyz"

	for (var i = 0; i <= integer - 1; i++) {
		var new_string = "";
		
		for (var a = 0; a <= Math.floor(Math.random() * 10); a++) {
			new_string += character_set.charAt(Math.floor(Math.random() * character_set.length));
		}
		construct.push(new_string);
	}
	return construct;
}

console.log(array_builder(3));
console.log(array_builder(5));
console.log("-------*END*--------")

for (var b = 0; b < 10; b++) {
	array_multiplier = array_builder(5);
	console.log(array_multiplier);
	console.log(longest(array_multiplier));
	console.log("--------end---------");
}