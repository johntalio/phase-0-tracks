// Define a function to reverse a string - allow the function to take a string as a parameter.
// Store an empty string in a variable.
// Create a for loop in which a variable (i) equals the length of the string minus 1; tell the loop to end when i is greater than or equal to 0; set a decrement.
// For each iteration the variable that will contain the reversed string will gradually grow as the old string shrinks: the characters of the old string will be added in reverse to the new string.
// Print the result to the console.

function reverse(string) {
	
	var reverseString = "";
	
	for (var i = string.length - 1; i >= 0; i--) {
		reverseString += string[i];
	}
	return reverseString;
}

console.log(reverse("palindrome"));

var notPalindrome = reverse("palindrome");
var willReverse = true;
var willNotReverse = false;

if (willReverse && !willNotReverse) {
	console.log("Ok, so reverse " + notPalindrome + ", right?");
} else {
	console.log("No reverse for you!");
}
