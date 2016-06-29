var colorArray = ["black", "purple", "indigo", "magenta","indigo","indigo","scarlet","black"];

function countColors (color, colorArray) {
    var count = 0;
	for (var i=0; i<colorArray.length; i++){
		if (color === colorArray[i]){
			count+=1;
		}
	}
	return count;

}



console.log(countColors("indigo", colorArray) === 3);
console.log(countColors("black", colorArray) === 2);
console.log(countColors("purple", colorArray) === 1);
console.log(countColors("pink", colorArray) === 0);

// function countColors (color, colorArray) {
// 	var count = 0;
// 	colorArray.forEach(function (colorfromArray){
// 		if(colorfromArray=== color){
// 			count +=1;
// 		});
// 		return count;
// 	}
// }

var uppcerCaseColors = colorArray.map(function (colorfromArray) {
	return colorfromArray.toUpperCase();
});

console.log(uppcerCaseColors);






