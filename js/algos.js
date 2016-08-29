//create a function
//input: an array of strings
//output: the longest string in the array

//check the length of the each word/phrase and compare it to
//the others

//return the longest string
function longestString(array) {
	var stringSize = 0;
	var biggestString = ' ';
	for (var i = 0; i < array.length; i++){
		if (array[i].length > stringSize){
			biggestString = array[i];
		}
	}
	return biggestString;
}