function Sleep(time, theCallback){
	setTimeout(function() {
	theCallback();	
	}, time*1000);
}


function sayHello(){
	console.log("Hello")
}

function sayHi(){
	console.log("Hi")
}


Sleep(10, sayHello)
Sleep(8, sayHi)
module.exports = Sleep;