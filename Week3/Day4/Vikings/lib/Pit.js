class Pit{
	constructor(viking1, viking2){
	this.viking1 = viking1;
	this.viking2 = viking2;
	this.num_turns = 5;
	};

	attack(viking1, viking2){

	while(this.num_turns > 0 && this.viking1.health > 0 && this.viking2.health > 0){
		viking1.health = viking1.health - viking2.strength;
		viking2.health = viking2.health - viking1.strength;
		this.num_turns -=1;
	}
	// return this.viking1.health;
	};

}


module.exports = Pit;

