class Assault{
	constructor(viking, saxon){
	this.viking = viking;
	this.saxon = saxon;
	this.vikingDeath = 0;
	this.saxonDeath = 0;
	};

	attack(viking, saxon){
		var num_turns = Math.floor(Math.random() * 8) + 5;
		var theAssault = this;
	while(num_turns > 0 && viking.length > 1 && saxon.length > 1){


		this.viking.forEach(function(one_viking, index){
			var one_saxson = saxon[Math.floor(Math.random() * saxon.length)];
			one_saxson.health = one_saxson.health - one_viking.strength;
		one_viking.health = one_viking.health - one_saxson.strength;

		if(one_viking.health <=0){
			//take out this viking
			theAssault.viking.splice(index, 1);
			theAssault.vikingDeath += 1;
		}

		if(one_saxson.health <=0){
			//take out this saxon
			theAssault.saxon.splice(index, 1);
			theAssault.saxonDeath += 1;
		}
		});
		num_turns -=1;
	}
		var vikingCas = Math.round((this.vikingDeath/(this.vikingDeath + this.saxonDeath))*100);
		var saxonCas = Math.round((this.saxonDeath/(this.vikingDeath + this.saxonDeath))*100);
		console.log("Viking casualty: " + vikingCas + "%");
		console.log("Saxon casualty: " + saxonCas + "%");
		
		if (vikingCas > saxonCas){
			console.log("Saxons won!!");
		}else{
			console.log("Vikings won!!");
		}

	}

}

module.exports = Assault;




