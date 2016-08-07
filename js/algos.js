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
//driver code for test 1
var newArray = ["Start me up", "Beast of Burden", "Can't you hear me knocking?"];
var phrase = longestString(newArray)
console.log(phrase)
//test two
var array2 = ["long", "longer", "lonnnnggest"]
var phrase2 = longestString(array2)
console.log(phrase2)

//make a function that compares two objects key values and 
//returns true if they are the same
//I'll need to create two objects with the same key values
var person = {name: "Tom", age : 29};
var person2 = {name: "Billy", age: 29};
// I should make third person to make sure it would return false if it needed to
var person3 = {name: "James", age: 30};
//now to set up my function
//it will check to see if the key values are equivilent or not
//then return true or false
function equal(person, person2){
	for (var val in person) {
		if(person2[val] == person[val]){
			return true;
		}
	}
	return false;
}
console.log(equal(person, person2));
console.log(equal(person,person3));