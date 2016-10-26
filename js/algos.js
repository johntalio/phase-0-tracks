// Write a function that returns the longest word/phrase of an array of words/phrases.
// Define an array of words/phrases; store it in a variable.
// Create a function that passes an array as the parameter.
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

// Write a function that takes an integer for length, and builds and returns an array of strings of the given length.
// Create a function that passes an integer as the parameter.
// Within the function, store an empty array in a variable.
// Depending on the value of the parameter, have the function add that many strings to the empty array.
// Generate strings of random lengths with __________

function array_builder() {
	var construct = []
	character_set = "abcdefghijklmnopqrstuvwxyz"
	var new_string = "";

	for (var i = 0; i < 10; i++) {
		var generate_int = Math.floor(Math.random() * character_set.length);
		new_string += character_set.substring(generate_int, generate_int + 1);
	}
	return new_string
}

console.log(array_builder());


