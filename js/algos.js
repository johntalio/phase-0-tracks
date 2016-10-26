// Write a function that returns the longest word/phrase of an array of words/phrases.
// Define an array of words/phrases; store it in a variable.
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