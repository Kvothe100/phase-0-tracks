var colors = ["blue", "gold", "black", "red"];
var horseNames = ["Ed", "Woody", "Galaxy", "June"];
//write code to add to arrays with .push
colors.push("Yellow");
horseNames.push("Hoss");
//print the arrays
console.log(colors);
console.log(horseNames);

//driver code to check if they were added

var horses = {};

for (var i = 0; i < horseNames.length; i++) {
	horses[horseNames[i]] = colors[i];
}
console.log(horses);

// create car function
function car (color, year, make){
	console.log("our car is a:", this);

	this.color = color;
	this.year = year;
	this.make = make;
	this.wheels = function() {console.log("Wow! It's got wheels!"); };

	console.log("Car creator is finished");
}
console.log("Time to build a car!");

var newCar  = new car("Red", 2009, "Toyota");
console.log(newCar);
newCar.wheels();
var newCar2 = new car("Blue", 1972, "Chevy");
console.log(newCar2);
newCar2.wheels();