// create a function that takes a string as an argument
// for each letter in the string split them
//reverse the letters and print the result
//store the result in a variable
//print the variable inside of a string
function reverse(s) {
	return s.split('').reverse().join('');
}

myVar =  reverse("kingofthenorf");

console.log(reverse("kingofthenorf"));
console.log("The reversed word is " + myVar);

var newVar = 1;
if (newVar >= 1) {
	console.log(myVar);
}