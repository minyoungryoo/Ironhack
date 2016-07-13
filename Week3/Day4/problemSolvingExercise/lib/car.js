class Car{
	constructor(model, noise){
	this.model = model;
	this.noise = noise;
	this.num_wheels = 4;
	};

	printNoise(){
		console.log(this.noise);
	};
}


module.exports = Car;