var colorsArray = ["blue", "black", "pink", "red", "black","pink","pink"];

function printColor(theColor){
	console.log(theColor);
}

colorsArray.forEach(printColor);


function printStuff () {
	console.log("10 seconds over!!");
}

setTimeout(printStuff, 10000);

console.log("Timer started");


colorsArray.forEach(function(theColor){
	console.log(theColor);
});


console.log("\nEnd of program");


var fs = require("fs");

// fileContents = IO.read("")

fs.readFile("movies.txt","utf8",function(theError,fileContents){
	console.log("\nfile has been read! Printing its contents:");
	console.log(fileContents);
});

var Sleep = require("./lib/sleep.js");

Sleep(5, function(){
	console.log("5 seconds have ellapsed");
})

















