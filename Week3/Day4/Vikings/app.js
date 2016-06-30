"use strict";

var Viking = require("./lib/Vikings.js");
var Pit = require("./lib/Pit.js");
var Saxon = require("./lib/Saxons.js");
var Assault = require("./lib/Assault.js");

var viking_1 = new Viking("Ordy", 200, 100);
var viking_2 = new Viking("Randol", 100, 150);
var viking_3 = new Viking("Cand", 330, 150);
var viking_4 = new Viking("Welh", 520, 300);
var viking_5 = new Viking("Brus", 180, 200);
var viking_6 = new Viking("Mian", 220, 130);

var vikings_arr = [viking_1, viking_2, viking_3, viking_4, viking_5, viking_6];


var saxon_1 = new Saxon();
var saxon_2 = new Saxon();
var saxon_3 = new Saxon();
var saxon_4 = new Saxon();
var saxon_5 = new Saxon();
var saxon_6 = new Saxon();

var saxons_arr = [saxon_1, saxon_2, saxon_3, saxon_4, saxon_5, saxon_6];

// viking_1.health();
console.log(viking_1.health);
var newFight = new Pit(viking_1, viking_2);
// var newFight = new Pit(vikings_arr);

newFight.attack(viking_1, viking_2);
console.log(viking_1.health);


var newAssault = new Assault(vikings_arr, saxons_arr);
var casualty = newAssault.attack(vikings_arr, saxons_arr);
// console.log(casualty);












