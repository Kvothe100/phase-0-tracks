//create a function
//input: an array of strings
//output: the longest string in the array

//check the length of the each word/phrase and compare it to
//the others

//return the longest string
var array = ["Start me up", "Beast of Burden", "Can't you hear me knocking?", "Let it bleed"];
function longestString() {
	if (array[0].length > array[1].length && array[0].length > array[2].length && array[0].length > array[3]) {
		console.log("The longest phrase is " + array[0])
	}
}