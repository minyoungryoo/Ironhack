var read = require('read');

class Quiz{
	constructor(qn_ans_arr){
		this.question_ans_arr = qn_ans_arr;
		this.score = 0;
		this.id = 0;
		this.random_id = Math.floor(Math.random()*3);
	}

	start(check){
		console.log(check);
		if(check){
			console.log("success!");
			// play();
		}
	}

	play(){
		var current_question = this.question_ans_arr[this.id];
		var question_text = current_question.question;
		var prompt = {prompt: question_text};
		var input = read(prompt, user_input);
		var theQuiz = this;

		function user_input (err, user_answer){
		    // return user_answer;
		    processAns(user_answer);
		}

		function processAns (input){
			if(current_question.correct(input)){
				if(theQuiz.id === theQuiz.random_id){
				console.log("You got the bonus question correct!");
				theQuiz.score += 2;
				}else{
				console.log("correct!");
				theQuiz.score += 1;
				}
				theQuiz.id += 1;
			}else{
				theQuiz.score -= 1;
				console.log("incorrect; try again!");
			}

			console.log("current score is:" + theQuiz.score);

			if (theQuiz.id < theQuiz.question_ans_arr.length) {
				theQuiz.play();
			}

		}
	}

}

module.exports = Quiz;




