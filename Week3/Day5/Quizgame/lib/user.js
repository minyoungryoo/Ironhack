var read = require('read');


class User{
	constructor(name){
		this.name = name;
		// this.curr_pts = curr_pts;
		// this.ques_id = ques_id;
		this.existing_id = "mr232";
	}

	// beginning(){}

	loginCheck(callback){

		var prompt = {prompt: "Type username"};
		var input = read(prompt, user_input);
		var thisUser = this;

		function user_input (err, username){
		    processLogin(username);
		}

		function processLogin (input){
			if (input === thisUser.existing_id){
				callback(1,2)
			}else{
				console.log("Unknown user ID");
				return false;
			}
		}


	}
}

module.exports = User;





