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

var newArray = ["Start me up", "Beast of Burden", "Can't you hear me knocking?"];
var phrase = longestString(newArray);
console.log(phrase);
//test two
var array2 = ["long", "longer", "lonnnnggest"];
var phrase2 = longestString(array2);
console.log(phrase2);

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

// create a function that takes an integer and returns an array of that integer
// make the function scramble up and generate a random word
// I'll to make an array that is empty, make a variable equal to the alphabet
//use .math.floor and .random (I had to google this pretty hard)
//Make the words be between 1 and 10 letters long

function wordGen(numb, numb2){
	//create a blank array to be pushed to later in function
	var array =[];
	//make the words be seperated by ""
	var scramble = "";
	//make the alphabet including capital letters
	var alphabet = "abcdefghijklmnopqrstuvqxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
	for (var x = 0; x < numb; x++)
	{
			for (var i= 0; i < numb2; i++)
			scramble += alphabet.charAt(Math.floor(Math.random() * alphabet.length));
			array.push(scramble);
	}
	return array;
}
// testing
console.log(wordGen(4,(Math.floor(Math.random()* 10)+1)));
// I couldn't get the word to only be up to 10 letters long. So I settled for this
//after some failed attempts to get it right
var bigArray = wordGen(4,(Math.floor(Math.random()* 10)+1));
console.log(bigArray);
var phrase3 = longestString(bigArray);
console.log(phrase3);