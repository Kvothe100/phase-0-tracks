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