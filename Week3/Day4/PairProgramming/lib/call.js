function Call(time, theCallback){
	setTimeout(function() {
	theCallback();	
	}, time*1000);
}

module.exports = Call;