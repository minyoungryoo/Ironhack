var user = {}
var responses = []
function userinfo() {
	var name = prompt("What is your name?")
	user.name = name
}
userinfo();

function question1() {
	var q1 = prompt("Is New York the capital of the United States? (Yes/No)")
	if (q1.toLowerCase() === "no"){
		responses.push(true)
	} else if (q1.toLowerCase() === "yes") {
		responses.push(false)
	} else{
		alert ("Invalid response")
	}
}

question1();

function question2() {
	var q2 = prompt("How many letters are in the word, \"subservient\"? (a. 5, b. 7, c. 9, d. 11 e. 13)")
	switch (q2.toLowerCase()){
		case "d":
			responses.push(true)
			break;
		case "a":
		case "b":
		case "c":
		case "e":
			responses.push(false)
			break;

		default:
			alert("Invalid response")
			break;

	}

}

question2();


	function sum(num1, num2) {
		return Number(num1) + Number(num2);
	}

function question3() {
	alert("Find the sum of two numbers of your choice; is it (even/odd)? (inputs must be integers only)")
	var q31 = prompt("First number?")
	var q32 = prompt("Second number?")
	var q3 = prompt("Answer?")

	if ((((sum(q31, q32)%2) !== 0)&&(q3.toLowerCase()==="odd"))||(((sum(q31, q32)%2) === 0)&&(q3.toLowerCase()==="even"))){
		responses.push(true)
	} else if ((((sum(q31, q32)%2) === 0)&&(q3.toLowerCase()==="odd"))||(((sum(q31, q32)%2)!== 0)&&(q3.toLowerCase()==="even"))){
		responses.push(false)
	} else {
		alert("Invalid response")
	}
}

 question3();


function lettonum(lett) {
	var letters = "abcde";
	var number = ""
	for(var j=0; j<lett.length; j++){
		letlim=lett[j].toUpperCase().charCodeAt();
		if(letlim >= 65 && letlim <= 69){
	for(var i=0; i<letters.length; i++){
		if (letters[i]===lett[j]){
			number+=(i+1).toString();
		}
	}
	} else { 
		alert("Invalid response");
		return;
			}
	}
	return number;
}

function question4() {
	var q41 = prompt("Given the alphabets a-e, make any word using the 5 letters")
	var q42 = prompt("Given each letter of the alphabets a-e represents a number from 1-5 (e.g. a = 1, b = 2, ...), what number does it represent?")
	if(/^[a-zA-Z]+$/.test(q41)){
		if (q42 === lettonum(q41)){
			responses.push(true)
		} else {
			responses.push(false)
		}
	} else {
		alert("Invalid response");
		return;
	}

}

question4();


function evaluate(responsesArray) {
	var correct = 0;
	var incorrect = 0;
for(var i=0; i<responses.length; i++){
	if(responses[i]===true){
		correct+=1
	}
	else{
		incorrect+=1
	}
	user.correct = correct
	user.incorrect = incorrect
}

	return showResults();
}

function showResults() {
	var text = "Quiz result for " + user.name + ": Total number correct: " + user.correct + " Total number incorrect: "+user.incorrect
	alert(text)

}

// call the function, passing it the responses array
evaluate(responses);







