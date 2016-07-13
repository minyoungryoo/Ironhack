//Nice way:

"use strict";

var Animal = require("./lib/animal.js");

var shadow = new Animal("Shadow","Ruff");

console.log(shadow.name);
shadow.shout();
shadow.makeNoise();

var princess = new Animal("Princess", "Meow");
princess.shout();
princess.makeNoise();


console.log("-------------------------");

var Car = require("./lib/car.js");

var newCar = new Car("Honda", "Broooom");

newCar.printNoise();




// var Animal = function(){};
//same thing as below:
			// function Animal (name, noise) {
			// 	this.name = name;
			// 	this.noise = noise;
			// };

			// Animal.prototype.shout = function(){
			// 	console.log("Mooo!");
			// };

			// Animal.prototype.makeNoise = function(){
			// 	console.log(this.noise + "!!!!");
			// };

// var shadow = new Animal("Shadow", "Ruff");

// console.log(shadow.name);
// shadow.shout();
// shadow.makeNoise();

// var princess = new Animal("Princess", "Meow");
// princess.shout();
// princess.makeNoise();


// shadow = new Animal();

// var shadow = {
// 	name: "shadow",
// 	noise: "Ruff",

// 	shout: function(){
// 		console.log("Mooo!");

// 	},

// 	makeNoise: function(){
// 		console.log(this.noise + "!!!!!");
// 	}
// }


// shadow.shout();
// shadow.makeNoise();


// var princess = {
// 	name: "princessMimi",
// 	noise: "Meow",

// 	shout: function() {
// 		console.log("MEOW!");
// 	}

// 		makeNoise: function(){
// 		console.log(this.noise + "!!!!!");
// 	}
// }

// princess.shout();
// princess.makeNoise();