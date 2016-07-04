var read = require('read');

class Question{
	constructor(question, answer){
		this.question = question;
		this.answer = answer;
	}

	correct(user_answer){
		if(user_answer === this.answer){
			return true;
		}else{
			return false;
		}
	}


}

module.exports = Question;






